document.querySelectorAll('.card-btn').forEach((button, index) => {
    button.addEventListener('click', (event) => {
        event.preventDefault();
        // Redirect to the details page (you can pass route-specific data via query params if needed)
        window.location.href = 'routeDetail.html';
    });
});