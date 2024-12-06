import Cliente from '../models/clienteModel.js'; // Importando o model

// Função para criar cliente
export const criarCliente = async (req, res) => {
    try {
        const { cpf, nome, dataNascimento, endereco, telefone, cidade, sexo, status } = req.body;

        // Cria o cliente no banco de dados
        const cliente = await Cliente.create({
            clienteCPF: cpf,
            clienteNome: nome,
            clienteDataNasc: dataNascimento,
            clienteEnde: endereco,
            clienteTel: telefone,
            clienteCidade: cidade,
            clienteSexo: sexo, // Adicionando o campo sexo
            clienteStatus: status, // Adicionando o campo status
            clienteCNH: 123456789,  // Preenchendo com dados temporários, se necessário
            clienteCNHCat: 'A',     // Preenchendo com dados temporários, se necessário
        });

        res.status(201).json({ message: 'Cliente criado com sucesso!', cliente });
    } catch (error) {
        console.error('Erro ao cadastrar cliente:', error);
        res.status(500).json({ error: 'Erro ao cadastrar cliente' });
    }
};