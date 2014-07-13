// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require_tree .
//= require foundation



$(document).ready(function() {
  $(document).foundation();

  var navbar = $('.site-header .navbar');
  var navbarIcon = $('.site-header .navbar .navbar-button');
  navbarIcon.on('click', function() {
    navbar.toggleClass('expand');
  })

  var thumbnails = $('[data-frame]');
  if (thumbnails.length > 0) {
    thumbnails.each(function(i, e) {
      var thumbnail = $(thumbnails[i]);
      var ratio = thumbnail.data('ratio').split('x');
      var x = ratio[0];
      var y = ratio[1];
      new KeepFrameRatio(thumbnails[i], x, y)
    })
  }

  var equal = $('[data-equalize-watch]');
  if (equal.length > 0) {
    equal.each(function() {
      var object = $(this);
      if (object.length > 0) {
        new EqualHeight(object);
      }
    })
  }


  // var wrapper = $('.wrapper');
  // var wrapperID = wrapper.attr('id');
  // if (wrapperID === 'welcome') {
  //   var thumbnails = $('.thumbnail');
  //   new KeepFrameRatio(thumbnails, 16, 9);

  // } else if (wrapperID === 'team' || wrapperID === 'participant') {
  //   var thumbnails = $('.team_pics');
  //   new KeepFrameRatio(thumbnails, 1, 1);
  // }

  // var logo = $('.site-header .logo')
  // new KeepFrameRatio(logo, 624, 377);

  smoothScrolling();


  $(window).trigger('resize');



});


function KeepFrameRatio(objects, x, y, target) {
  var objects = $(objects);
  var target = target || objects
  var width = target.outerWidth();
  var height = width * y /x;

  objects.css({height: height});

  $(window).on('resize', function() {
    width = target.outerWidth();

    height = width * y / x;
    objects.css({height: height});
  })

}

function EqualHeight(object) {
  var object = $(object);
  var target = $(object.data('equalizeTarget'));
  var targetHeight = target.outerHeight();
  object.css({height: targetHeight});
  $(window).on('resize', function() {
    targetHeight = target.outerHeight();
    object.css({height: targetHeight});
  })
}

function smoothScrolling() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
}

function Task() {
  var tasks = [];
}
Task.prototy