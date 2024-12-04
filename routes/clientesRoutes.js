import express from 'express';
import conexao from '../db.js';

const router = express.Router();

// Rota para listar todos os clientes
router.get('/', (req, res) => {
    const sql = 'SELECT * FROM cliente';
    conexao.query(sql, (erro, resultados) => {
        if (erro) {
            console.error('Erro ao buscar clientes:', erro);
            res.status(500).json({ erro: 'Erro ao buscar clientes' });
            return;
        }
        res.json(resultados);
    });
});

// Rota para criar um novo cliente
router.post('/', (req, res) => {
    const { nome, email, telefone } = req.body;
    const sql = 'INSERT INTO cliente (nome, email, telefone) VALUES (?, ?, ?)';
    conexao.query(sql, [nome, email, telefone], (erro) => {
        if (erro) {
            console.error('Erro ao criar cliente:', erro);
            res.status(500).json({ erro: 'Erro ao criar cliente' });
            return;
        }
        res.status(201).json({ message: 'Cliente criado com sucesso!' });
    });
});

export default router;