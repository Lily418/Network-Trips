function show_images(){
    var seen = 0;
    var count = 4;
    $( ".user-image" ).each(function(){
        if(seen < count){
            $( this ).show();
        } else {
            $( this ).hide();
        }
        seen++;
    });
}

function move_left(){
    $lastImage = $( ".user-image" ).last().detach();
    $( '#images' ).prepend($lastImage);
    show_images();
}

function move_right(){
    $firstImage = $( ".user-image").first().detach();
    $( '#images' ).append($firstImage);
    show_images();
}


$( document ).ready(function(){
    $( "#buddies-button-left" ).click(move_left);
    $( "#buddies-button-right" ).click(move_right);
    $( ".login-link" ).click(show_login_modal);
    $( ".sign-up-link" ).click(show_signup_modal);
    show_images();

});
