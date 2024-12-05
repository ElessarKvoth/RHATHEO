document.getElementById('login-form').addEventListener('submit', function(e) {
    e.preventDefault(); // Iimpede o botãozinho de funcionar até  que seja permitido (preencher tudo)

    var login = document.getElementById('login').value;
    var senha = document.getElementById('senha').value;

    if (login === '' || senha === '') {
        alert('Por favor, preencha todos os campos.');
        //se não prencher ele faz essa msg
    } else {
        alert('Login efetuado com sucesso!');
        window.location.href = '../inicio/inicio.html'; 
        //se der certo vem uma menagem e  abre a tela de inicio

    }
});
