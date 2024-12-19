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