export default function rotas(req, res, dado) {

    res.setHeader('Content-type', 'application/json', 'utf-8');

    if (req.method === 'GET' && req.url === '/') {
        const { conteudo } = dado;

        res.statusCode = 200;

        const resposta = {
            mensagem: conteudo
        };

        res.end(JSON.stringify(resposta));
        return
    }   

    if(res.method === 'PUT' && req.url === '/arquivos'){

    }

    res.statusCode = 404;

    const resposta ={
        erro:{
            mensagem: 'rota não encontrada',
            req: req.url
        }
    };
        
    res.end(JSON.stringify(resposta));
    
}