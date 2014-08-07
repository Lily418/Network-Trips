var COUNT = 5;

function show_images(){
    var image = 0;
    $( "#user-images .col-md-2" ).each(function(){
        if(image < COUNT){
            $( this ).show()
        } else {
            $( this ).hide()
        }

        image++;
    })
}

var move_right = function(){
    $firstUser = $( "#user-images .col-md-2" ).first().detach();
    $( "#user-images" ).append($firstUser);
    show_images();
}

var move_left = function(){
    $lastUser = $( "#user-images .col-md-2" ).last().detach();
    $( "#user-images" ).prepend($lastUser);
    show_images();
}

var change_image = function(newImage, element){
    return function(){
        $( element ).attr("src", newImage)
    }
}

var id_like_to_go_clicked = function(){
    var place_id = this.id.match(/[0-9]+/);
    var place_name = $( this ).parent().parent().children( "h3" ).text();
    $( "<div>" +
       "Be told when we go to " + place_name     + ":" +
       "<%= 5 %>" +
       "</div>" ).dialog({
          modal: true,
          title: "Know when we go"
       });
}

$( document ).ready(function(){
    $( "<img id='arrow-left' src='/arrow-left.png' />" ).addClass('col-md-1').click(move_left).mouseenter(change_image("/arrow-left-rollover.png", "#arrow-left")).mouseout(change_image("/arrow-left.png", "#arrow-left")).prependTo( "#users" );
    $( "<img id='arrow-right' src='/arrow-right.png' />" ).addClass('col-md-1').click(move_right).mouseenter(change_image("/arrow-right-rollover.png", "#arrow-right")).mouseout(change_image("/arrow-right.png", "#arrow-right")).appendTo( "#users" );
    show_images();

    $( ".id-like-to-go-button" ).click(id_like_to_go_clicked)
});
