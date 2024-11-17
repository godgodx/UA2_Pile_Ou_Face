'use strict';
const { Model } = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class BetHistory extends Model {
    static associate(models) {
      // relation avec User db
      BetHistory.belongsTo(models.User, { foreignKey: 'userId', as: 'user' });
    }
  }
  BetHistory.init(
    {
      userId: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
          model: 'Users', 
          key: 'id', 
        },
        onDelete: 'CASCADE',
      },
      betAmount: {
        type: DataTypes.FLOAT,
        allowNull: false,
      },
      betResult: {
        type: DataTypes.STRING,
        allowNull: false,
      },
    },
    {
      sequelize,
      modelName: 'BetHistory',
    }
  );
  return BetHistory;
};
