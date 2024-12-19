// section 1 Start 
document.getElementById('search-icon').addEventListener('click', function(event) {
    event.preventDefault(); // Prevent the default anchor behavior
    document.getElementById('search-box').style.display = 'block'; // Show the search box
});

document.getElementById('close-search').addEventListener('click', function() {
    document.getElementById('search-box').style.display = 'none'; // Hide the search box
});

document.querySelectorAll('.nav-item.dropdown > .nav-link').forEach(item => {
    item.addEventListener('click', function(event) {
        const dropdownMenu = this.nextElementSibling;
        dropdownMenu.style.display = dropdownMenu.style.display === 'block' ? 'none' : 'block';
        event.preventDefault(); // Prevent default link behavior
    });
});
// section 1 End 

// section 2 start ...!

/// Variables
let currentSlide = 0;
let totalSlides = 3;
let slider = document.getElementById('slider');
let playStopBtn = document.getElementById('playStopBtn');
let interval;

// Function to move slider left or right
function moveSlider(direction) {
    if (direction === 'prev') {
        currentSlide = (currentSlide === 0) ? totalSlides - 1 : currentSlide - 1;
    } else if (direction === 'next') {
        currentSlide = (currentSlide === totalSlides - 1) ? 0 : currentSlide + 1;
    }
    updateSlider();
}

// Function to go to specific page
function goToPage(pageNumber) {
    currentSlide = pageNumber;
    updateSlider();
}

// Function to update the slider position
function updateSlider() {
    let offset = -currentSlide * 100;
    slider.style.transform = `translateX(${offset}%)`;

    // Update the active indicator
    updateIndicators();
}

// Function to update the active indicator circle
function updateIndicators() {
    let indicators = document.querySelectorAll('.indicator-btn');
    indicators.forEach((indicator, index) => {
        if (index === currentSlide) {
            indicator.classList.add('active');
        } else {
            indicator.classList.remove('active');
        }
    });
}

// Function to toggle the play/pause functionality
function togglePlay() {
    if (interval) {
        clearInterval(interval);
        interval = null;
        playStopBtn.classList.add('stop');
        playStopBtn.innerHTML = '<i class="fas fa-stop"></i>'; // Change to Play icon
    } else {
        interval = setInterval(() => {
            moveSlider('next');
        }, 3000); // Automatic slide every 3 seconds
        playStopBtn.classList.remove('stop');
        playStopBtn.innerHTML = '<i class="fas fa-play"></i>';
    }
}

// Start the slider automatically when the page loads
window.onload = function () {
    togglePlay(); // Automatically play on load
}

//  section 2 end ..!


    // Section 3 start...! 

    document.querySelectorAll('.hover-image').forEach(image => {
        const originalSrc = image.src; // Original image source
        const hoverSrc = image.getAttribute('data-hover'); // Hover image source
    
        image.addEventListener('mouseover', () => {
            image.src = hoverSrc; // Change to hover image
        });
    
        image.addEventListener('mouseout', () => {
            image.src = originalSrc; // Change back to original image
        });
    });


    document.addEventListener("DOMContentLoaded", function() {
        const sections = document.querySelectorAll('.section3'); // Sabhi sections ko select karo jinki class 'section3' hai
    
        // Callback function jo tab chalega jab target view me aaye
        const observerCallback = (entries, observer) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    // Agar section view me hai, to har image ko visible class do
                    const imgElements = entry.target.querySelectorAll('.image-fade-in');
                    imgElements.forEach((img, index) => {
                        setTimeout(() => {
                            img.classList.add('image-visible');
                        }, index * 100); // Delay ko adjust karo
                    });
                    // Ek baar images load ho jaye, to is section ko observe karna band karo
                    observer.unobserve(entry.target);
                }
            });
        };
    
        // Ek Intersection Observer banao
        const observer = new IntersectionObserver(observerCallback, {
            threshold: 0.1 // Jab section ka 10% hissa visible ho tab trigger ho
        });
    
        // Har section ko observe karo
        sections.forEach(section => {
            observer.observe(section);
        });
    });

    // section 4 end 

    // User Login Start 
    // Show the spinner when the form is submitted
 document.getElementById('login-form').addEventListener('submit', function(event) {
    event.preventDefault(); // Prevent the default form submission
    const spinner = document.getElementById('loading-spinner');
    spinner.style.display = 'inline-block'; // Show the spinner

     //Simulate a delay (e.g., for a network request)
    setTimeout(function() {
        spinner.style.display = 'none'; // Hide the spinner after 3 seconds
        alert('Request processed!'); // Simulate a response
    }, 3000); // Delay for 3 seconds
}); 
    // User Login End 
    
