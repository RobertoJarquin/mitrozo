document.addEventListener('DOMContentLoaded', function () {
    const gridItems = document.querySelectorAll('.image-section div');
    gridItems.forEach((item, index) => {
        setTimeout(() => {
            item.classList.add('loaded');
        }, index * 100);
    });
});
function createBinaryRain() {
    const binaryRain = document.querySelector('.binary-rain');
    const screenHeight = window.innerHeight;
    const numBinaries = 50; // Cantidad de números binarios que quieres mostrar

    // Función para crear un solo número binario
    function createSingleBinary() {
        const binary = document.createElement('div');
        binary.classList.add('binary');
        const binaryDigit = Math.random() < 0.5 ? '0' : '1'; // Generar aleatoriamente 0 o 1
        binary.innerText = binaryDigit;
        binary.style.left = `${Math.random() * 100}vw`; // Aleatorio horizontalmente
        binary.style.top = `-${Math.random() * screenHeight}px`; // Aleatorio verticalmente
        binary.style.animationDuration = `${Math.random() * 8 + 5}s`; // Ajustar velocidad aquí
        binaryRain.appendChild(binary);

        // Eliminar el elemento después de que caiga
        binary.addEventListener('animationend', () => {
            binary.remove();
            createSingleBinary(); // Volver a crear el número para mantener la cantidad constante
        });
    }

    // Crear la cantidad inicial de números binarios
    for (let i = 0; i < numBinaries; i++) {
        createSingleBinary();
    }
}

createBinaryRain();

