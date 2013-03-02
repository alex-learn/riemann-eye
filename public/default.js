$(document).ready(function() {
    $('#query').keydown(function(event) {
        if (event.keyCode == 13) {
	    $('#response').html('<span>Loading...</span>');
	    $('#response').load('/grid/' + encodeURIComponent($('#query > input').val()), 
                	        function(response, status, xhr) {
	        		    if (status == 'error') {
	        			alert('Error');
	        		    }
	                        }
	                       );
        }

    })
})


