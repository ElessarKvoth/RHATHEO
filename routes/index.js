import express from 'express';
import clienteRoutes from './clienteRoutes.js';
import funcionarioRoutes from './funcionarioRoutes.js';
import veiculoRoutes from './veiculoRoutes.js';
import ordemDeServicoRoutes from './ordemDeServicoRoutes.js';

const router = express.Router();

// Definir as rotas para cada tabela
router.use('/clientes', clienteRoutes);
router.use('/funcionarios', funcionarioRoutes);
router.use('/veiculos', veiculoRoutes);
router.use('/ordem-de-servico', ordemDeServicoRoutes);

export default router;