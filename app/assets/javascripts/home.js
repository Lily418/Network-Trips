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
    $( ".id-like-to-go-button" ).click(id_like_to_go_clicked)

});

$(window).load(function(){
    //equal_height_featured_trips();
});
