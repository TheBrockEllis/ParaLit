$(".books.show").ready(function(){

  $("#flipbook").turn({
    'duration': 700,
    'width': 700,
    'height': 400
  });

  var font = $("#flipbook").data("font");
  if(font){

    var head = document.getElementsByTagName('head')[0];
    var link = document.createElement('link');
    link.id = font;
    link.rel = 'stylesheet';
    link.type = 'text/css';
    link.href = 'http://fonts.googleapis.com/css?family='+font;
    link.media = 'all';
    head.appendChild(link);

    $("#flipbook .page, .page p").css("font-family", font);
  }

  $("#flipbook").bind("turning", function(event, page, view) {
    //view is an array of the two pages
    var selector = ".p"+view[0]+" p, .p"+view[1]+" p";

    $("#flipbook " + selector).css("font-family", font);
  });

});