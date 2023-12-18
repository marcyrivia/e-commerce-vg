const gameDetailsContainer = document.getElementById('game-details');
const urlParams = new URLSearchParams(window.location.search);
const gameId = urlParams.get('id');

if (!gameId) {
    window.location.href = 'index.html';
} else {
    fetch('assets/data/games.json')
        .then(response => response.json())
        .then(data => {
            const game = data[gameId];

            if (game) {
                const card = document.createElement('div');
                card.classList.add('card');

                const imageDiv = document.createElement('div');
                imageDiv.classList.add('image-container');
                imageDiv.innerHTML = `<img src="assets/image/${game.Image}" alt="Image du jeu">`;

                const detailsDiv = document.createElement('div');
                detailsDiv.classList.add('details-container');
                detailsDiv.innerHTML = `
                    <h2>${game.Nom}</h2>
                    <p>${game.Description}</p>
                    <p class="price">Prix: ${game.Prix}</p>
                    <p class="studio">Studio: ${game.Studio}</p>
                    <p class="platform">Plateforme: ${game.Plateforme}</p>
                    <button class="add-to-cart-btn">Ajouter au panier</button>
                    <button class="view-reviews-btn">Voir les avis</button>
                    <div class="reviews-container"></div>
                `;

                card.appendChild(imageDiv);
                card.appendChild(detailsDiv);

                gameDetailsContainer.appendChild(card);
            } else {
                window.location.href = 'index.html';
            }
        });
}


const viewReviewsBtn = detailsDiv.querySelector('.view-reviews-btn');
const reviewsContainer = detailsDiv.querySelector('.reviews-container');

viewReviewsBtn.addEventListener('click', () => {
    if (game.Avis && game.Avis.length > 0) {
        const reviewsHTML = game.Avis.map(review => `<p>${review}</p>`).join('');
        reviewsContainer.innerHTML = reviewsHTML;
        reviewsContainer.style.display = 'block';
    } else {
        reviewsContainer.innerHTML = '<p>Aucun avis disponible.</p>';
        reviewsContainer.style.display = 'block';
    }
});
