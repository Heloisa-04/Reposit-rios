// Verifica se os links têm pelo menos 48x48px
const links = document.querySelectorAll("a");
links.forEach(link => {
  const width = link.offsetWidth;
  const height = link.offsetHeight;
  if (width < 48 || height < 48) {
    console.warn("Link com tamanho inferior ao recomendado:", link);
  }
});
