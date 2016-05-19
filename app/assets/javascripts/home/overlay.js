document.onkeydown = function(evt) {
    evt = evt || window.event;
    if (evt.keyCode == 27) {
        toggleOverlay()
    }
};



function toggleOverlay(){
    var overlayYT = document.getElementById('overlay_video');
    var videoBox = document.getElementById('videoBox');
    overlayYT.style.opacity = .8;
    if(overlayYT.style.display == "block"){
        overlayYT.style.display = "none";
        videoBox.style.display = "none";
        $(window).disablescroll("undo");

    } else {
        overlayYT.style.display = "block";
        videoBox.style.display = "block";
    //$(window).disablescroll();
        //$('body').on({'mousewheel': function(e) {
        //if (e.target.id == 'el') return;
        //e.preventDefault();
        //e.stopPropagation();
    //}
}}