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

                
                const addToCartBtn = document.querySelector('.add-to-cart-btn');
                addToCartBtn.addEventListener('click', () => {
                    const gameDetails = {
                        id: gameId,
                        nom: document.querySelector('.details-container h2').textContent,
                        prix: document.querySelector('.details-container .price').textContent,
                        
                    };

                    let cart = JSON.parse(localStorage.getItem('cart')) || [];

                    const existingGame = cart.find(item => item.id === gameDetails.id);

                    if (existingGame) {
                        alert('Ce jeu est déjà dans votre panier.');
                    } else {
                        cart.push(gameDetails);
                        localStorage.setItem('cart', JSON.stringify(cart));
                        alert('Le jeu a été ajouté au panier !');
                    }
                });
            } else {
                window.location.href = 'index.html';
            }
        });
}

