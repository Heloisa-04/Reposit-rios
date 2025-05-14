import accordionInit from "./modules/accordion.js";
import tabMenuInit from "./modules/tabmenu.js";
import menuMobileInit from "./modules/menuMobile.js";
import { Modal } from "./modules/modal.js";

tabMenuInit()
accordionInit()
menuMobileInit()

new Modal('.js-modal',  '.modal-close', '.modal-forms', '.js-modal-blur').init();




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