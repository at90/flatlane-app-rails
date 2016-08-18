
function homeCard(){
$(".homecards").each(function(index) {
    $(this).delay(100*index).hide().fadeIn(1000);});

};
$(document).on('ready page:load', function () {
homeCard();});


/*appear fadeIn cards */