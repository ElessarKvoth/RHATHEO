import express from 'express';
import conexao from '../db.js';

const router = express.Router();

// Rota para listar todos os funcionários
router.get('/', (req, res) => {
    const sql = 'SELECT * FROM funcionario';
    conexao.query(sql, (erro, resultados) => {
        if (erro) {
            console.error('Erro ao buscar funcionários:', erro);
            res.status(500).json({ erro: 'Erro ao buscar funcionários' });
            return;
        }
        res.json(resultados);
    });
});

// Rota para criar um novo funcionário
router.post('/', (req, res) => {
    const { nome, cargo, salario } = req.body;  // Exemplo de campos
    const sql = 'INSERT INTO funcionario (nome, cargo, salario) VALUES (?, ?, ?)';
    conexao.query(sql, [nome, cargo, salario], (erro, resultados) => {
        if (erro) {
            console.error('Erro ao criar funcionário:', erro);
            res.status(500).json({ erro: 'Erro ao criar funcionário' });
            return;
        }
        res.status(201).json({ message: 'Funcionário criado com sucesso!' });
    });
});

export default router;
