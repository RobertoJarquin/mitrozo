// JavaScript para el efecto de aparición y desaparición
document.addEventListener("DOMContentLoaded", function () {
    const observerOptions = {
        root: null, // Se observa con relación al viewport
        rootMargin: "0px",
        threshold: 0.1 // El 10% de la imagen debe estar visible para activar el callback
    };

    const observerCallback = (entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.style.opacity = 1; // Imagen visible
            } else {
                entry.target.style.opacity = 0; // Imagen oculta
            }
        });
    };

    const observer = new IntersectionObserver(observerCallback, observerOptions);
    const imagenJuan = document.querySelector('.imagen-juan');
    observer.observe(imagenJuan);
});






