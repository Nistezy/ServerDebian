document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('login-form');
    const usernameInput = document.getElementById('username');
    const passwordInput = document.getElementById('password');

    form.addEventListener('submit', (e) => {
        e.preventDefault();

        const username = usernameInput.value.trim();
        const password = passwordInput.value.trim();

        if (username === '' || password === '') {
            alert('Usuário e senha são obrigatórios.');
            return;
        }

        if (username === "nistezy" && password === "password123") {
            alert('Login realizado com sucesso!');
            window.location.href = "/admin/dashboard.html";
        } else {
            alert('Usuário ou senha inválidos.');
        }
    });
});
