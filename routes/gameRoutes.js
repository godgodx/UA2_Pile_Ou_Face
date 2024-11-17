const express = require('express');
const router = express.Router();
const gameController = require('../controllers/gameController');
const authMiddleware = require('../middlewares/authMiddleware');
const { Referral, User } = require('../models');
// Route pour jouer à Pile ou Face
router.post('/flip', authMiddleware, gameController.flipCoin);

// Route pour l'admin ajouter un montant
router.post('/admin/add-balance', authMiddleware, gameController.addBalance);

// Route pour récupérer l'historique des paris
router.get('/bets', authMiddleware, gameController.getBetHistory);

// Route pour récupérer les informations de parrainage
router.get('/referrals', authMiddleware, async (req, res) => {
  try {
    const referrals = await Referral.findAll({
      where: { userId: req.user.id },
      include: [
        { model: User, as: 'referredUser' }, 
        { model: User, as: 'user' }, 
      ],
    });

    res.status(200).json(referrals);
  } catch (error) {
    res.status(500).json({ message: 'Error retrieving referral information', error });
  }
});

module.exports = router;
