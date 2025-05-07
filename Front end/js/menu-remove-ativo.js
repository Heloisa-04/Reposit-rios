// Remove 'ativo' de todos os itens e mantém apenas no primeiro
const menuItens2 = document.querySelectorAll(".menu li");
menuItens2.forEach((item, index) => {
  item.classList.remove("ativo");
  if (index === 0) item.classList.add("ativo");
});
