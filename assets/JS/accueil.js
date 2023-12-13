const infos = document.getElementById('infos');


fetch('assets/data/games.json')
  .then(response => response.json())
  .then(data => {
    console.log(data);

    for (let index of data) {
      const card = document.createElement('div');
      card.classList.add('card');
      card.innerHTML = `
      <img src="assets/image/${index.Image}" alt="">
    
      
      ` 

      infos.appendChild(card)
    }
  })
