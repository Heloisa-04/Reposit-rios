// Verifica se todas as imagens possuem atributo alt
const imagens = document.querySelectorAll("img");
imagens.forEach(img => {
  if (!img.hasAttribute("alt")) {
    console.warn("Imagem sem alt:", img);
  }
});
