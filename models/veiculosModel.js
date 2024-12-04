const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../config/database'); // Arquivo de configuração do banco de dados

const Veiculo = sequelize.define('Veiculo', {
  veicPlaca: {
    type: DataTypes.STRING(7),
    primaryKey: true,
    allowNull: false,
  },
  veicModelo: {
    type: DataTypes.STRING(20),
    allowNull: false,
  },
  veicCor: {
    type: DataTypes.STRING(20),
    allowNull: false,
  },
  veicAno: {
    type: DataTypes.INTEGER(4),
    allowNull: false,
  },
  veicCategoria: {
    type: DataTypes.INTEGER(4),
    allowNull: false,
  },
  veicCombustivel: {
    type: DataTypes.CHAR(1),
    allowNull: false,
  },
  veicSituacao: {
    type: DataTypes.STRING(20),
    allowNull: false,
  },
}, {
  tableName: 'veiculo',
  timestamps: false,
});

module.exports = Veiculo;
