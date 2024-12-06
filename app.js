import express from 'express';
import { criarCliente } from './controllers/clienteController.js'; // Certifique-se do caminho correto para o controller

const app = express();

// Middleware para interpretar JSON no corpo das requisições
app.use(express.json());

// Registre a rota /clientes com o método POST
app.post('/clientes', criarCliente);

// Inicie o servidor
const PORT = 3000; // A porta deve coincidir com a que o frontend está usando
app.listen(PORT, () => {
    console.log(`Servidor rodando na porta ${PORT}`);
});