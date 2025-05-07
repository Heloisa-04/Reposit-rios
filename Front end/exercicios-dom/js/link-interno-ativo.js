// Adiciona/remover classe 'ativo' em links internos ao clicar
const linksInt = document.querySelectorAll('a[href^="#"]');
linksInt.forEach(link => {
  link.addEventListener("click", function (event) {
    event.preventDefault();
    linksInt.forEach(item => item.classList.remove("ativo"));
    this.classList.add("ativo");
  });
});
