export default function tabMenuInit(){
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


    // faça a lógica sempre utilizando uma função para exportação
    // essa função sera inicializada no index.js
}
   