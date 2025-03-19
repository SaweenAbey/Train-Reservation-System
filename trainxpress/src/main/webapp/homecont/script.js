const slides = [
  {
      img: 'homecont/pic (1).jpg',
      title: 'Chillaw ',
      description: ' Puttalam District, North Western Province, Sri Lanka.'
  },
  {
      img: 'homecont/pic (2).jpg',
      title: 'Mahamevnawa Monastery',
      description: 'Mahamevnawa Buddhist Monastery, Ella.'
  },
  {
      img: 'homecont/pic (4).jpg',
      title: 'Nine Arch Bridge',
      description: ' Demodara, between Ella and Demodara railway stations.'
  }
];
window.onscroll = function () {
    updateScrollIndicator();
};

function updateScrollIndicator() {
    const scrollIndicator = document.getElementById('scroll-indicator');
    const scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
    const scrollHeight = document.documentElement.scrollHeight - document.documentElement.clientHeight;
    const scrollPercentage = (scrollTop / scrollHeight) * 100;
    scrollIndicator.style.width = scrollPercentage + '%';
}

function showSlide(index) {
  const mainImage = document.getElementById('main-image');
  const mainTitle = document.getElementById('main-title');
  const mainDescription = document.getElementById('main-description');

  mainImage.src = slides[index].img;
  mainTitle.textContent = slides[index].title;
  mainDescription.textContent = slides[index].description;
}

let currentReviewSlide = 0;
const reviewSlides = document.querySelectorAll('.review-card');
const totalReviewSlides = reviewSlides.length;

function moveReviewSlide(direction) {
    currentReviewSlide += direction;

    if (currentReviewSlide >= totalReviewSlides) {
        currentReviewSlide = 0;
    } else if (currentReviewSlide < 0) {
        currentReviewSlide = totalReviewSlides - 1;
    }

    const reviewContainer = document.querySelector('.review-container');
    reviewContainer.style.transform = `translateX(-${currentReviewSlide * 100}%)`;
}

// Automatically move slides every 25ms
setInterval(() => {
    moveReviewSlide(1);
}, 2500);