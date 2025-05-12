
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

        // Automatically move slides every 2.5s
        setInterval(() => {
            moveReviewSlide(1);
        }, 2500);
