$(document).ready(function() {
    $('#query').keydown(function(event) {
        if (event.keyCode == 13) {
            $('#response').load('/grid/' + $('#query > input').val(), 
                                function(response, status, xhr) {
                                    alert(response)
                                })
        }
    })
})


