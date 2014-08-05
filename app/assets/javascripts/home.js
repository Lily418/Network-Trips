var COUNT = 5;

function show_images(){
    var image = 0;
    $( ".user" ).each(function(){
        if(image < COUNT){
            $( this ).show()
        } else {
            $( this ).hide()
        }

        image++;
    })
}

var move_right = function(){
    $firstUser = $( ".user" ).first().detach();
    $( "#user-images" ).append($firstUser);
    show_images();
}

var move_left = function(){
    $lastUser = $( ".user" ).last().detach();
    $( "#user-images" ).prepend($lastUser);

    show_images();
}

$( document ).ready(function(){
    $( "<img id='arrow-left' src='/arrow-left.png' />" ).click(move_left).prependTo( "#users" );
    $( "<img id='arrow-right' src='/arrow-right.png' />" ).click(move_right).appendTo( "#users" );
    show_images();
});
