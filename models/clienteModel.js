import { Sequelize, DataTypes } from 'sequelize';
import sequelize from '../config/db.js'; // Arquivo de configuração do banco de dados

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
  clienteSexo: {
    type: DataTypes.STRING(10),
    allowNull: false,
  },

}, {
  tableName: 'cliente',
  timestamps: false,
});

export default Cliente;
