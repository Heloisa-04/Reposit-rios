// Aumenta o tamanho da fonte do site ao pressionar "t"
window.addEventListener("keydown", event => {
  if (event.key === "t") {
    document.documentElement.style.fontSize = "120%";
  }
});
