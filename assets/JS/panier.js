const cartContainer = document.getElementById('cart-container');


const cart = JSON.parse(localStorage.getItem('cart')) || [];


if (cart.length > 0) {
    
    const cartList = document.createElement('div');

   
    cart.forEach(gameDetails => {
       
        const gameElement = document.createElement('div');
        gameElement.classList.add('cart-item');

        
        gameElement.innerHTML = '<p>' + gameDetails.nom + '</p><p>' + gameDetails.prix + '</p>';
        

        
        cartList.appendChild(gameElement);
    });

    
    cartContainer.appendChild(cartList);
} else {
    
    cartContainer.innerHTML = '<p>Le panier est vide.</p>';
}