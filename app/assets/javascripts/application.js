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
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation(); });

$(document).ready(function() {

  var navbar = $('.site-header .navbar');
  var navbarIcon = $('.site-header .navbar .navbar-button');
  navbarIcon.on('click', function() {
    navbar.toggleClass('expand');
  })

  var wrapper = $('.wrapper');
  if (wrapper.hasClass('home')) {
    var thumbnails = $('.thumbnail');
    keepFrameRatio(thumbnails);
  }

});

function keepFrameRatio(objects) {
  var objects = $(objects);
  var width = objects.outerWidth();
  var height = width * 9 / 16;

  objects.css({height: height});

  $(window).on('resize', function() {
    width = objects.outerWidth();
    height = width * 9 / 16;
    objects.css({height: height});
  })
}