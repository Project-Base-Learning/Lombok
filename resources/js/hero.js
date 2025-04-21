const carousel = document.getElementById("carousel");
const slides = carousel.children;
const totalSlides = slides.length;
let currentIndex = 0;

// Buttons
const prevButton = document.getElementById("prev");
const nextButton = document.getElementById("next");
const indicators = document.querySelectorAll("[data-index]");

// Function to update carousel
function updateCarousel(index) {
    carousel.style.transform = `translateX(-${index * 100}%)`;
    indicators.forEach((indicator, i) => {
        indicator.classList.toggle("bg-gray-800", i === index);
        indicator.classList.toggle("bg-gray-300", i !== index);
    });
}

// Event Listeners
prevButton.addEventListener("click", () => {
    currentIndex = (currentIndex - 1 + totalSlides) % totalSlides;
    updateCarousel(currentIndex);
});

nextButton.addEventListener("click", () => {
    currentIndex = (currentIndex + 1) % totalSlides;
    updateCarousel(currentIndex);
});

indicators.forEach((indicator) => {
    indicator.addEventListener("click", (e) => {
        currentIndex = parseInt(e.target.getAttribute("data-index"));
        updateCarousel(currentIndex);
    });
});

// Initialize
updateCarousel(currentIndex);
