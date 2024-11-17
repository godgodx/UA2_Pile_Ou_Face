'use strict';
const { Model } = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class User extends Model {
    static associate(models) {
      // Relation avec BetHistory
      User.hasMany(models.BetHistory, { foreignKey: 'userId', as: 'bets' });

      // Relation avec Referral (parrainage)
      User.hasMany(models.Referral, { foreignKey: 'referredUserId', as: 'referralsAsReferred' });

      // Un utilisateur peut parrainer plusieurs utilisateurs (userId)
      User.hasMany(models.Referral, { foreignKey: 'userId', as: 'referralsAsReferrer' });
    }
  }

  User.init(
    {
      email: DataTypes.STRING,
      password: DataTypes.STRING,
      role: DataTypes.STRING,
      balance: DataTypes.FLOAT,
      referralCode: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: 'User',
    }
  );
  return User;
};
