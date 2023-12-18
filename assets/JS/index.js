const infos = document.getElementById('infos');



fetch('assets/data/games.json')
    .then(response => response.json())
    .then(data => {
        let id = 0;

       

        for (const game of data) {
            const card = document.createElement('div');
            card.classList.add('card');
            card.innerHTML = `
                <a href="jeu.html?id=${id}">
                    <img src="assets/image/${game.Image}" alt="Image de jeu">
                </a>
            `;
            infos.appendChild(card);
            id++;
        }
    });


