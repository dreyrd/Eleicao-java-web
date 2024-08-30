let menuNav = document.getElementById('navegacao');
window.onload = tocarMusica;


function abrirMenu(){
    menuNav.style.transform = 'translateX(0)';
}
function fecharMenu(){
    menuNav.style.transform = 'translateX(-100%)';
}

// function tocarMusica() {
//     const audio = new Audio('C:/xampp\tomcat\webapps\WEB\music\Michael Jackson - Thriller (Official 4K Video) (mp3cut.net).mp3'); // Substitua pelo caminho do seu arquivo
//     audio.play();
// }

// document.addEventListener("DOMContentLoaded", function () {

//     const audio = new Audio('C:/xampp/tomcat/webapps/WEB/music/Michael Jackson - Thriller (Official 4K Video) (mp3cut.net).mp3'); 
//     audio.play();

// });

