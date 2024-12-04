const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../config/database'); // Arquivo de configuração do banco de dados

const Funcionario = sequelize.define('Funcionario', {
  funcMat: {
    type: DataTypes.INTEGER(4),
    primaryKey: true,
    allowNull: false,
  },
  funcNome: {
    type: DataTypes.STRING(40),
    allowNull: false,
  },
  funcEnde: {
    type: DataTypes.STRING(60),
    allowNull: false,
  },
  funcTel: {
    type: DataTypes.STRING(15),
    allowNull: false,
  },
  funcDepto: {
    type: DataTypes.INTEGER(11),
    allowNull: false,
  },
  funcCidade: {
    type: DataTypes.STRING(60),
    allowNull: false,
  },
}, {
  tableName: 'funcionario',
  timestamps: false,
});

module.exports = Funcionario;
