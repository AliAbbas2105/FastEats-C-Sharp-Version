// Get the cart icon and modal
var cartIcon = document.getElementById('cart-icon');
var modal = document.getElementById('cart-modal');

// When cart icon is clicked, show modal
cartIcon.onclick = function () {
    modal.style.display = 'block';
}

//When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
    if (event.target == modal) {
        modal.style.display = 'none';
    }
}

// When the user clicks on the 'x' button, close the modal
var closeButton = document.getElementsByClassName('close')[0];
closeButton.onclick = function () {
    modal.style.display = 'none';
}

document.addEventListener('DOMContentLoaded', function () {
    var cartIcon = document.getElementById('cart-icon');
    var modal = document.getElementById('cart-modal');
    var closeButton = document.getElementsByClassName('close')[0];
    var checkoutButton = document.getElementById('checkout-btn');
    var cartItemsList = document.getElementById('cart-items-list');
    var totalPrice = document.getElementById('total-price');
    var cart = [];

    // When cart icon is clicked, show modal
    cartIcon.onclick = function () {
        modal.style.display = 'block';
        displayCart();
    }

    // When the user clicks on the 'x' button, close the modal
    closeButton.onclick = function () {
        modal.style.display = 'none';
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = 'none';
        }
    }

    // Function to display cart items
    function displayCart() {
        cartItemsList.innerHTML = '';
        totalPrice.innerHTML = '';

        if (cart.length === 0) {
            cartItemsList.innerHTML = '<p>Your cart is empty.</p>';
            checkoutButton.style.display = 'none'; // Hide checkout button if cart is empty
        } else {
            var totalPriceValue = 0;
            cart.forEach(function (item) {
                var itemElement = document.createElement('div');
                itemElement.classList.add('cart-item');
                itemElement.innerHTML = '<p>' + item.name + '</p><p>$' + item.price.toFixed(2) + '</p>';
                cartItemsList.appendChild(itemElement);
                totalPriceValue += item.price;
            });
            totalPrice.innerHTML = '<p>Total: $' + totalPriceValue.toFixed(2) + '</p>';
            checkoutButton.style.display = 'block'; // Show checkout button if cart has items
        }
    }

    // Function to add item to cart
    function addItemToCart(name, price) {
        cart.push({ name: name, price: price });
    }

    // Add event listener to checkout button
    checkoutButton.onclick = function () {
        window.location.href = 'payment.html';
    }

    // Example: Adding items to cart (Replace with your actual logic)
    document.querySelectorAll('.add-to-cart').forEach(function (button) {
        button.addEventListener('click', function () {
            var itemName = this.getAttribute('data-item');
            var itemPrice = parseFloat(this.getAttribute('data-price'));
            addItemToCart(itemName, itemPrice);
            displayCart();
        });
    });
});