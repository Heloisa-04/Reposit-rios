// Adiciona classe 'menu-mobile' ao menu se a janela for menor que 720px
if (window.innerWidth < 720) {
  const menu = document.querySelector(".menu");
  menu.classList.add("menu-mobile");
}
