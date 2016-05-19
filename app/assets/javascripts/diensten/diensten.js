$(document).ready(function(){
$("#wrapper_business_trans").hover(function(){
        $('.dienst_dienst1').addClass('red');
    }, function(){
        $('.dienst_dienst1').removeClass('red');
    });

    $("#wrapper_customer_exp").hover(function(){
        $('.dienst_dienst2').addClass('red');
    }, function(){
        $('.dienst_dienst2').removeClass('red');
    });

    $("#wrapper_gevonden_worden").hover(function(){
        $('.dienst_dienst3').addClass('red');
    }, function(){
        $('.dienst_dienst3').removeClass('red');
    });
});