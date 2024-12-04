import mysql from 'mysql2';

const conexao = mysql.createConnection({
    host: 'localhost',
    user: 'seu_usuario',
    password: 'sua_senha',
    database: 'sua_base_de_dados'
});

conexao.connect((erro) => {
    if (erro) {
        console.error('Erro ao conectar ao banco de dados:', erro);
    } else {
        console.log('Conexão com o banco de dados bem-sucedida!');
    }
});

export default conexao;
''