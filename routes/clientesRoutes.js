import express from 'express';
import { criarCliente } from '../controllers/clienteController.js';

const router = express.Router();

// Defina a rota POST para cadastrar clientes
router.post('/clientes', criarCliente);

export default router;