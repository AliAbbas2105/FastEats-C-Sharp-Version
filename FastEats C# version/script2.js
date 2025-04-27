
function confirmOrder(option) {
    document.getElementById('confirmationPopup').style.display = 'block';

    localStorage.setItem('orderOption', option);
}

function placeOrder() {
    const option = localStorage.getItem('orderOption');
    if (option === 'pickup') { // Redirect to pickup page
        window.location.href = 'index3.html';
    }
    else if (option === 'delivery') { // Redirect to delivery tracking page
        window.location.href = 'index.html';
    }
}

function closePopup() {
    document.getElementById('confirmationPopup').style.display = 'none';
}
