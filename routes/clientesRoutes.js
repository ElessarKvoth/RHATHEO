import express from 'express';
import { listarClientes, criarCliente } from '../controllers/clienteController.js';

const router = express.Router();

// Rotas
router.get('/', listarClientes);
router.post('/', criarCliente);

export default router;
