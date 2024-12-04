import express from 'express';
import conexao from '../db.js';

const router = express.Router();

// Rota para listar todas as ordens de serviço
router.get('/', (req, res) => {
    const sql = 'SELECT * FROM ordem_de_servico';
    conexao.query(sql, (erro, resultados) => {
        if (erro) {
            console.error('Erro ao buscar ordens de serviço:', erro);
            res.status(500).json({ erro: 'Erro ao buscar ordens de serviço' });
            return;
        }
        res.json(resultados);
    });
});

// Rota para criar uma nova ordem de serviço
router.post('/', (req, res) => {
    const { cliente_id, veiculo_id, descricao } = req.body;  // Exemplo de campos
    const sql = 'INSERT INTO ordem_de_servico (cliente_id, veiculo_id, descricao) VALUES (?, ?, ?)';
    conexao.query(sql, [cliente_id, veiculo_id, descricao], (erro, resultados) => {
        if (erro) {
            console.error('Erro ao criar ordem de serviço:', erro);
            res.status(500).json({ erro: 'Erro ao criar ordem de serviço' });
            return;
        }
        res.status(201).json({ message: 'Ordem de serviço criada com sucesso!' });
    });
});

export default router;
