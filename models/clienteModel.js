const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../config/database'); // Arquivo de configuração do banco de dados

const Cliente = sequelize.define('Cliente', {
  clienteCPF: {
    type: DataTypes.INTEGER(9),
    primaryKey: true,
    allowNull: false,
  },
  clienteNome: {
    type: DataTypes.STRING(40),
    allowNull: false,
  },
  clienteEnde: {
    type: DataTypes.STRING(60),
    allowNull: false,
  },
  clienteTel: {
    type: DataTypes.STRING(15),
    allowNull: false,
  },
  clienteCidade: {
    type: DataTypes.STRING(60),
    allowNull: false,
  },
  clienteDataNasc: {
    type: DataTypes.DATEONLY,
    allowNull: false,
  },
  clienteCNH: {
    type: DataTypes.INTEGER(11),
    allowNull: false,
  },
  clienteCNHCat: {
    type: DataTypes.STRING(2),
    allowNull: false,
  },
}, {
  tableName: 'cliente',
  timestamps: false,
});

module.exports = Cliente;