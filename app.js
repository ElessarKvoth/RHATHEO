import express from 'express';
import router from './routes/index.js'; // Alterando o caminho para a pasta routes

const app = express();
const PORT = 3000;

// Middleware para lidar com JSON
app.use(express.json());

// Usa as rotas definidas no arquivo routes/index.js
app.use('/', router);

// Inicia o servidor
app.listen(PORT, () => {
    console.log(`Servidor  RHATHEO rodando em http://localhost:${PORT}`);
});
