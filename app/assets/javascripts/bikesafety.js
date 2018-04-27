$(document).ready(function() {

    $('.bikesafety_question').click(function() {
        if ($(this).parent().is('.open')){
            $(this).closest('.bikesafety').find('.bikesafety_answer_container').animate({'height':'0'},500);
            $(this).closest('.bikesafety').removeClass('open');

            }else{
                var newHeight =$(this).closest('.bikesafety').find('.bikesafety_answer').height() +'px';
                $(this).closest('.bikesafety').find('.bikesafety_answer_container').animate({'height':newHeight},500);
                $(this).closest('.bikesafety').addClass('open');
            }

    });

});
