// Altera o href do link externo no menu para https://www.google.com
const menuLinks = document.querySelectorAll(".menu a");
menuLinks.forEach(link => {
  if (!link.getAttribute("href").startsWith("#")) {
    link.setAttribute("href", "https://www.google.com");
  }
});
