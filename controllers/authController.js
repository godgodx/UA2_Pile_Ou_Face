const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const { User, Referral } = require('../models');
const { body, validationResult } = require('express-validator');

exports.register = [
  // Validation des champs de l'inscription
  body('email').isEmail().withMessage('Invalid email format'),
  body('password').isLength({ min: 6 }).withMessage('Password must be at least 6 characters'),
  
  // Traitement de la requête
  async (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }

    const { email, password, referralCode } = req.body;

    try {
      // Hachage du mot de passe
      const hashedPassword = bcrypt.hashSync(password, 10);
      
      // Création de l'utilisateur
      const newUser = await User.create({
        email,
        password: hashedPassword,
        // Solde initial basé sur le code de parrainage
        balance: referralCode ? 200 : 100,  
        // Générer un code de parrainage unique
        referralCode: Math.random().toString(36).substring(2, 8),  
        role: 'user', 
      });

      // Gestion du parrainage
      if (referralCode) {
        const referrer = await User.findOne({ where: { referralCode } });

        // Si le parrain existe
        if (referrer) {
          // Ajouter 100$ au solde du parrain
          referrer.balance += 100;
          await referrer.save();

          // Enregistrer le parrainage dans la table Referral
          await Referral.create({
            userId: referrer.id,  
            referralCode: newUser.referralCode,  
            referredUserId: newUser.id,  
          });
        }
      }

      // Générer un token JWT pour l'utilisateur
      const token = jwt.sign({ id: newUser.id }, process.env.JWT_SECRET, { expiresIn: process.env.JWT_EXPIRATION });
      
      // Répondre avec le token et l'utilisateur créé
      res.status(201).json({ token, user: newUser });
    } catch (error) {
      res.status(500).json({ message: 'Registration failed', error });
    }
  }
];

exports.login = [
  // Validation des champs de la connexion
  body('email').isEmail().withMessage('Invalid email format'),
  body('password').notEmpty().withMessage('Password is required'),

  // Traitement de la requête
  async (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }

    const { email, password } = req.body;

    try {
      // Vérifier si l'utilisateur existe
      const user = await User.findOne({ where: { email } });
      if (!user) return res.status(404).json({ message: 'User not found' });

      // Vérifier si le mot de passe correspond
      const isMatch = bcrypt.compareSync(password, user.password);
      if (!isMatch) return res.status(401).json({ message: 'Invalid credentials' });

      // Générer un token JWT pour l'utilisateur
      const token = jwt.sign({ id: user.id }, process.env.JWT_SECRET, { expiresIn: process.env.JWT_EXPIRATION });
      
      // Répondre avec le token et l'utilisateur
      res.status(200).json({ token, user });
    } catch (error) {
      res.status(500).json({ message: 'Login failed', error });
    }
  }
];
