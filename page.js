function changeImage(imageSrc) {
    document.getElementById('mainImage').src = imageSrc;
}
//script for button color change on click event 
$(document).ready(function() {
    $('.btn-light').click(function() {
        $('.btn-light').removeClass('clicked'); // Remove clicked class from all buttons
        $(this).addClass('clicked'); // Add clicked class to the clicked button
    });
});

 // script for custom button input box
document.getElementById('customSizeBtn').addEventListener('click', function() {
    var customSizeInput = document.getElementById('customSizeInput');
    // Toggle the display property of the input box
    if (customSizeInput.style.display === 'none') {
        customSizeInput.style.display = 'block'; // Show the input box
    } else {
        customSizeInput.style.display = 'none'; // Hide the input box
    }
});
//script for counter to add item
let count = 1;
const counterDisplay = document.getElementById('counter2');

document.getElementById('increment2').addEventListener('click', () => {
    count++;
    counterDisplay.textContent = count;
});

document.getElementById('decrement2').addEventListener('click', () => {
    if (count > 1) {
        count--;
        counterDisplay.textContent = count;
    }
});
//script for popup on size chart
// Get elements
const sizeChart = document.querySelector('.size-chart');
const sizeChartPopup = document.getElementById('sizeChartPopup');
const overlay = document.getElementById('overlay');

// Show popup on click
sizeChart.addEventListener('click', function() {
    sizeChartPopup.style.display = 'block';
    overlay.style.display = 'block';
});

// Close popup on right click
document.addEventListener('contextmenu', function(event) {
    event.preventDefault(); // Prevent the default context menu
    sizeChartPopup.style.display = 'none';
    overlay.style.display = 'none';
});

// Close popup on button click
document.getElementById('closePopup').addEventListener('click', function() {
    sizeChartPopup.style.display = 'none';
    overlay.style.display = 'none';
});
//script for description and shipping
// Get elements
const descriptionTab = document.getElementById('descriptionTab');
const shippingTab = document.getElementById('shippingTab');
const descriptionContent = document.getElementById('descriptionContent');
const shippingContent = document.getElementById('shippingContent');

// Show description content on click
descriptionTab.addEventListener('click', function() {
    descriptionTab.classList.add('active');
    shippingTab.classList.remove('active');
    descriptionContent.classList.add('active');
    shippingContent.classList.remove('active');
});

//show shipping content on click
shippingTab.addEventListener('click', function() {
    shippingTab.classList.add('active');
    descriptionTab.classList.remove('active');
    shippingContent.classList.add('active');
    descriptionContent.classList.remove('active');
});

