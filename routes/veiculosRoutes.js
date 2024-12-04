import express from 'express';
import conexao from '../db.js';

const router = express.Router();

// Rota para listar todos os veículos
router.get('/', (req, res) => {
    const sql = 'SELECT * FROM veiculo';
    conexao.query(sql, (erro, resultados) => {
        if (erro) {
            console.error('Erro ao buscar veículos:', erro);
            res.status(500).json({ erro: 'Erro ao buscar veículos' });
            return;
        }
        res.json(resultados);
    });
});

// Rota para criar um novo veículo
router.post('/', (req, res) => {
    const { modelo, placa, cor } = req.body;  // Exemplo de campos
    const sql = 'INSERT INTO veiculo (modelo, placa, cor) VALUES (?, ?, ?)';
    conexao.query(sql, [modelo, placa, cor], (erro, resultados) => {
        if (erro) {
            console.error('Erro ao criar veículo:', erro);
            res.status(500).json({ erro: 'Erro ao criar veículo' });
            return;
        }
        res.status(201).json({ message: 'Veículo criado com sucesso!' });
    });
});

export default router;
