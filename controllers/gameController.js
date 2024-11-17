const { User, BetHistory } = require('../models');

// Fonction pour jouer à Pile ou Face
exports.flipCoin = async (req, res) => {
  console.log('User from token:', req.user);  

  const { betAmount } = req.body;
  const user = await User.findByPk(req.user.id);  

  if (!user) {
    return res.status(404).json({ message: 'User not found' });
  }

  if (user.balance < betAmount) {
    return res.status(400).json({ message: 'Insufficient balance' });
  }

  const result = Math.random() > 0.5 ? 'win' : 'lose';
  user.balance += result === 'win' ? betAmount : -betAmount;
  await user.save();

  await BetHistory.create({
    userId: user.id,
    betAmount,
    betResult: result,
  });

  res.status(200).json({ result, balance: user.balance });
};

// Fonction pour que l'admin puisse ajouter un montant à son solde
exports.addBalance = async (req, res) => {
  // Vérifier si l'utilisateur a le rôle admin
  const user = await User.findByPk(req.user.id);

  if (!user) {
    return res.status(404).json({ message: 'User not found' });
  }

  if (user.role !== 'admin') {
    return res.status(403).json({ message: 'Access denied, admin only' });
  }

  const { amount } = req.body;

  if (!amount || amount <= 0) {
    return res.status(400).json({ message: 'Invalid amount' });
  }

  // Ajouter le montant au solde de l'admin
  user.balance += amount;
  await user.save();

  res.status(200).json({ message: `Balance updated successfully`, balance: user.balance });
};

// Fonction pour récupérer l'historique des paris avec pagination
exports.getBetHistory = async (req, res) => {
  //limit par défaut = 10
  const page = parseInt(req.query.page) || 1;
  const limit = parseInt(req.query.limit) || 10;

  try {
    const bets = await BetHistory.findAll({
      where: { userId: req.user.id },
      limit,
      // Calcul du décalage
      offset: (page - 1) * limit,
    });

    res.status(200).json(bets);
  } catch (error) {
    res.status(500).json({ message: 'Error retrieving bet history', error });
  }
};
