const infos = document.getElementById('infos');


fetch('assets/data/games.json')
    .then(response => response.json())
    .then(data => {
        console.log(data);
let id = 0
        for (let index of data) {
            const card = document.createElement('div');
            card.classList.add('card');
            card.innerHTML = `
      <a href="jeu.html?id=${id}"><img src="assets/image/${index.Image}" alt="Image de jeu"></a> 
      `
       

            infos.appendChild(card)
            id++;
        }
    })
