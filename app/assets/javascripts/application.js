// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require rails.validations
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .
$(document).ready( function() {
  console.log('JQuery ready');
  $('#showVideo').hide();

  $carasoulControlRight = $('.carousel-control.right');
  $carasoulRight = $('.glyphicon-chevron-right');
  $carasoulControlLeft = $('.carousel-control.left');
  $carasoulLeft = $('.glyphicon-chevron-left');

  //Right
  $carasoulControlRight.on('mouseover', function(){
    console.log('carasoul touched!');
    $carasoulRight.css({
      color: 'white'
    });
    $carasoulRight.toggle('slide');
  });

  $carasoulControlLeft.on('mouseleave', function(){
    console.log('carasoul touched!');
    $carasoulLeft.css({
      color: 'black'
    });
    $carasoulLeft.stop('slide');
  });

  //Left
  $carasoulControlLeft.on('mouseover', function(){
    console.log('carasoul touched!');
    $carasoulLeft.css({
      color: 'white'
    });
    $carasoulLeft.toggle('slide');
  });

  $carasoulControlRight.on('mouseleave', function(){
    console.log('carasoul touched!');
    $carasoulRight.css({
      color: 'black'
    });
    $carasoulRight.stop('slide');
  });

  //
  //
  //
  //
  // $carasoulControlRight.on('mouseleave', function(){
  //   console.log('carasoul touched!');
  //   $carasoulLeft.css({
  //     color: 'black'
  //   });
  //   $carasoulRight.stop('slide');
  // });
  // $carasoulControlLeft.on('mouseleave', function(){
  //   console.log('carasoul touched!');
  //   $carasoulLeft.css({
  //     color: 'black'
  //   });
  //   $carasoulLeft.stop('slide');
  // });
  //
  // $carasoulLeft.on('click', function(){
  //   console.log('carasoul clicked!');
  // })


  $('#videobutton').on('click', function(){
    $('#showVideo').show();
  });

})
