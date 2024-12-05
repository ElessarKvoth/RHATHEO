import express from 'express';
import cors from 'cors';
import bodyParser from 'body-parser';
import clienteRoutes from './routes/clientesRoutes.js';

const app = express();
const PORT = 3000;

// Middlewares
app.use(cors());
app.use(bodyParser.json());

// Rotas
app.use('/api/clientes', clienteRoutes);

// Servir o front-end (opcional)
app.use(express.static('public'));

// Iniciar o servidor
app.listen(PORT, () => {
    console.log(`Servidor rodando em http://localhost:${PORT}`);
});
