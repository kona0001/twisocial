$(function(){
window.scrollTo(0,document.body.scrollHeight);
});

//modal
/*
$(function(){

  //テキストリンクをクリックしたら
  $("#modal-open").click(function(){

    //モーダルウィンドウを表示
    $("#modal-bg,#modal-main").fadeIn("slow");

    //画面のどこかをクリックしたらモーダルを閉じる
    $("#modal-bg").click(function(){
      $("#modal-main,#modal-bg").fadeOut("slow",function(){

      });
    });
  });
});
*/

$(function(){
  $("#update-tweet").click(function(){
    $("#update-tweet").remove();
    $("#new-tweet").show();
    setTimeout(function(){
      $("#modal-bg,#modal-main").fadeIn("slow");
      /*
      $("#modal-bg").click(function(){
        $("#modal-main,#modal-bg").fadeOut("slow",function(){
        });
      });
      */
    },2000);
    setTimeout(function(){
      $("#post-form").stop().animate({bottom:'0'},400);
    },6000);
  });
});


$(function(){
  $("#pop-profile").click(function(){
    $('#profile-block').toggleClass('switch');
    if($('#profile-block').hasClass('switch')){
      $("#profile-block").show();
    } else{
      $("#profile-block").hide();
    }
  });
});

$(function() {
  var $children = $('.children');
  var original = $children.html();

  $('.parent').change(function() {
    var val1 = $(this).val();

    $children.html(original).find('option').each(function() {
      var val2 = $(this).data('val');
      if (val1 != val2) {
        $(this).not('optgroup,.msg').remove();
      }
    });

    if ($(this).val() === '') {
      $children.attr('disabled', 'disabled');
    } else {
      $children.removeAttr('disabled');
    }

  });
});
