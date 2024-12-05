import Cliente from '../models/clienteModel.js';

// Listar todos os clientes
export const listarClientes = async (req, res) => {
  try {
    const clientes = await Cliente.findAll(); // Sequelize retorna todos os registros da tabela cliente
    res.json(clientes);
  } catch (erro) {
    console.error('Erro ao buscar clientes:', erro);
    res.status(500).json({ erro: 'Erro ao buscar clientes' });
  }
};

// Criar um novo cliente
export const criarCliente = async (req, res) => {
  const { clienteCPF, clienteNome, clienteEnde, clienteTel, clienteCidade, clienteDataNasc, clienteCNH, clienteCNHCat } = req.body;

  try {
    const novoCliente = await Cliente.create({
      clienteCPF,
      clienteNome,
      clienteEnde,
      clienteTel,
      clienteCidade,
      clienteDataNasc,
      clienteCNH,
      clienteCNHCat,
    });
    res.status(201).json({ message: 'Cliente criado com sucesso!', cliente: novoCliente });
  } catch (erro) {
    console.error('Erro ao criar cliente:', erro);
    res.status(500).json({ erro: 'Erro ao criar cliente' });
  }
};
