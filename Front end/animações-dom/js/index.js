// import accordionInit from "./modules/accordion.js";
// import tabMenuInit from "./modules/tabmenu.js";
import menuMobileInit from "./modules/menuMobile.js";
// import { Modal } from "./modules/modal.js";

// tabMenuInit()
accordionInit()
menuMobileInit()

// new Modal('.js-modal', 
// '.modal-close', 
// '.modal-forms', '.js-modal-blur').init();




const imagens = document.querySelectorAll(".natureza-img");
const conteudos = document.querySelectorAll(".natureza-content");

imagens.forEach((img, index) => {
  img.addEventListener("click", () => {
    // Oculta todos os conteúdos
    conteudos.forEach(c => c.classList.remove("active"));

    // Mostra apenas o conteúdo correspondente à imagem clicada
    conteudos[index].classList.add("active");
  });
});


document.querySelectorAll(".js-accordion dt").forEach((item) => {
  item.addEventListener("click", () => {
    // Alterna a seta
    item.classList.toggle("active");

    // Alterna a resposta
    const resposta = item.nextElementSibling;
    resposta.classList.toggle("active");
  });
});


document.addEventListener('DOMContentLoaded', function () {
    const modal = document.querySelector('.modal');
    const closeBtn = document.querySelector('.modal-close');

    // Exibe o modal com animação
    modal.classList.add('show');

    // Evento de fechar o modal
    closeBtn.addEventListener('click', function () {
        modal.classList.remove('show');
    });
});