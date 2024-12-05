import { Sequelize } from 'sequelize';
import dotenv from 'dotenv';

dotenv.config();

// Criação da instância do Sequelize para conectar ao banco de dados MySQL
const sequelize = new Sequelize(
  process.env.DB_NAME,
  process.env.DB_USER,
  process.env.DB_PASSWORD,
  {
    host: process.env.DB_HOST,
    dialect: 'mysql',
    port: process.env.DB_PORT,
    logging: false, // Desativa logs de SQL no console (opcional)
  }
);

// Teste de conexão com o banco de dados
try {
  await sequelize.authenticate();
  console.log('Conexão com o banco de dados estabelecida!');
} catch (erro) {
  console.error('Erro ao conectar ao banco de dados:', erro);
}

export default sequelize;
