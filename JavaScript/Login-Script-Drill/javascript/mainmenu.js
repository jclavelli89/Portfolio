<!--//Begin Menu Script 
var delay         	= 0;
var reset      		= 0;
var dropdown      	= 0;

// Reveal hidden layer
function menu_open(id)
{   
    // Cancel timer
    cancelclose_time();

    // Close previous layer
    if(dropdown) dropdown.style.visibility = 'hidden';

    // Open and reveal new layer
    dropdown = document.getElementById(id);
    dropdown.style.visibility = 'visible';

}
// Close revealed layer
function mouse_close()
{
    if(dropdown) dropdown.style.visibility = 'hidden';
}

// Initiate timer
function close_time()
{
    reset = window.setTimeout(mouse_close, delay);
}

// Reset timer
function cancelclose_time()
{
    if(reset)
    {
        window.clearTimeout(reset);
        reset = null;
    }
}

// Hides layer on click-out
document.onclick = mouse_close; 
// -->