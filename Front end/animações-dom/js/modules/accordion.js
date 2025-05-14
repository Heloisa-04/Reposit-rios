export default function accordionInit(){
    document.querySelectorAll(".js-accordion dt").forEach((item) => {
    item.addEventListener("click", () => {
        // Alterna a seta
        item.classList.toggle("active");

        // Alterna a resposta
        const resposta = item.nextElementSibling;
        resposta.classList.toggle("active");
    });
    });

}