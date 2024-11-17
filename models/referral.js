module.exports = (sequelize, DataTypes) => {
  const Referral = sequelize.define('Referral', {
    userId: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    referralCode: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true, 
    },
    referredUserId: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    referralDate: {
      type: DataTypes.DATE,
      defaultValue: DataTypes.NOW,
    },
  });

  Referral.associate = function (models) {
    // Un utilisateur peut avoir plusieurs parrainages
    Referral.belongsTo(models.User, { foreignKey: 'userId', as: 'user' });
    // Un utilisateur peut être parrainé par plusieurs personnes
    Referral.belongsTo(models.User, { foreignKey: 'referredUserId', as: 'referredUser' });
  };

  return Referral;
};
