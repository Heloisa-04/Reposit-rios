//    seleciona o elemento html que tem uma clase em css chamada menu, que no caso é uma lista
const menu_itens = document.querySelectorAll(".menu li");

// pega cada item e adiciona a classe ativo
menu_itens.forEach(item => item.classList.add("ativo"));
