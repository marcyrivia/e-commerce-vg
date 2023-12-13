const infos = document.getElementById('infos');


fetch('assets/data/games.json')
  .then(response => response.json())
  .then(data => {
    console.log(data);

    for (let index = 0; index < array.length; index++) {
      const card = document.createElement('div');
      card.classList.add('card');
      card.innerHTML = `
      
      <img src="https://image.tmdb.org/t/p/original/${Image}" alt="${ImageJeu}">
      
      ` 

      infos.appendChild(card)
    }
  })
