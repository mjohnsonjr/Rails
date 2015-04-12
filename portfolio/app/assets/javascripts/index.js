/* Set selected nav item on page load,
kinda hacked right now, but turbolinks in
rails 4 is failing me :(
http://stackoverflow.com/questions/17600093/rails-javascript-not-loading-after-clicking-through-link-to-helper */

//$( '.nav-link' ).click( function() {
$(document).on('page:load', function() {
    //var next = $(this).parent('.tab-pane').attr('id');
    var next = window.location.pathname;
    updateNavSelector(next);

});


function updateNavSelector( arg1 ) {
    
    $('#list li.active').removeClass('active');

    switch( arg1 ) {
    	
    	case '/':
    		$( '#about').addClass( 'active' );
    		break;	

    	case '/resume':
    		$( '#resume').addClass( 'active' );
    		break;	

        case '/projects':
            $( '#projects').addClass( 'active' );
            break;  

        case '/contact':
            $( '#contact').addClass( 'active' );
            break; 
    }
};