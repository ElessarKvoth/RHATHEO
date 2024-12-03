import http from 'http';
import fs from 'fs';
import rotas from './routes.js';


fs.writeFile('./mensagem.txt', 'Olá Do arquivo', 'utf-8', (erro) => {
    if(erro) {
        console.log(`falha ao escrever o arquivo`, erro);
        return;
    }
    console.log('Arquivo creado with sucesso');
});

fs.readFile('./mensagem.txt', 'utf-8', (erro, conteudo) => {
    if(erro){
        console.log('Falha na leitura do arquivo', erro);
        return;
    }
    console.log(`conteudo: ${conteudo}`);
    iniciaServidorHttp(conteudo);
    
});

function iniciaServidorHttp(mensagem) {

    const servidor = http.createServer((req, res) => {
        rotas(req, res, { conteudo });
    });
    
    const porta = 3000;
    const host = 'localhost';
    
    servidor.listen(porta, host, () => {
        console.log(`SERVIDOR RHATHEO EM EXECUÇÃO em http://${host}:${porta}/`)
    })

}

