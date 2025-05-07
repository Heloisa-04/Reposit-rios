// Soma da largura de todas as imagens
let soma = 0;
document.querySelectorAll("img").forEach(img => {
  soma += img.offsetWidth;
});
console.log("Soma das larguras das imagens:", soma);
