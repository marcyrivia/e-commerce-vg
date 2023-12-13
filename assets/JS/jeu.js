const gameDetailsContainer = document.getElementById('game-details');

// Récupérer l'ID du jeu à partir de l'URL
const urlParams = new URLSearchParams(window.location.search);
const gameId = urlParams.get('id');

// Vérifier si l'ID est valide
if (!gameId) {
    // Rediriger vers la page d'accueil ou afficher un message d'erreur
    window.location.href = 'index.html';
} else {
    // Charger les détails du jeu en fonction de l'ID
    fetch(`assets/data/games.json`)
        .then(response => response.json())
        .then(data => {
            const game = data[gameId];

            if (game) {
                // Afficher les détails du jeu
                const detailsContainer = document.createElement('div');
                detailsContainer.classList.add('game-details');
                detailsContainer.innerHTML = `
                    <h2>${game.Nom}</h2>
                    <img src="assets/image/${game.Image}" alt="Image du jeu">
                    <p>${game.Description}</p>
                    <p>Prix: ${game.Prix}</p>
                    <p>Studio: ${game.Studio}</p>
                    <p>Plateforme: ${game.Plateforme}</p>
                `;

                gameDetailsContainer.appendChild(detailsContainer);
            } else {
                // Rediriger vers la page d'accueil ou afficher un message d'erreur
                window.location.href = 'index.html';
            }
        })

}
