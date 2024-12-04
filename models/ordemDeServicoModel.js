const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../config/database'); // Arquivo de configuração do banco de dados

const OrdemServico = sequelize.define('OrdemServico', {
  osCod: {
    type: DataTypes.INTEGER(6),
    primaryKey: true,
    allowNull: false,
  },
  osVeicPlaca: {
    type: DataTypes.STRING(7),
    allowNull: false,
  },
  osDataRet: {
    type: DataTypes.DATEONLY,
    allowNull: false,
  },
  osDataDev: {
    type: DataTypes.DATEONLY,
    allowNull: false,
  },
  osClienteCPF: {
    type: DataTypes.INTEGER(9),
    allowNull: false,
  },
  osFuncionarioMat: {
    type: DataTypes.INTEGER(4),
    allowNull: false,
  },
}, {
  tableName: 'ordem_servico',
  timestamps: false,
});

module.exports = OrdemServico;
