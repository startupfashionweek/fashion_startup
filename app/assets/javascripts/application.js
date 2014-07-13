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

  var ticker = $('[data-ticker]');
  if (ticker.length > 0) {
    ticker.each(function(i, e) {
      var object = $(e);
      new Ticker(object);
    })
  }

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

function Ticker(object) {
  var self = this;
  self.object = object;
  self.list = object.find('ul');
  self.msgs = object.find('li');
  self.contents = self.msgs.children().children();
  self.length = self.msgs.length;
  self.duration = 1000;

  self.initialize();
  self.onStart();
}

Ticker.prototype.initialize = function() {
  var self = this;

  self.findMaxHeight();
  var maxHeight = self.maxHeight;

  self.setTickerHeight();

  $(window).on('resize', function() {
    self.findMaxHeight();
    if (maxHeight != self.maxHeight) {
      maxHeight = self.maxHeight;
      self.setTickerHeight();
    }
  })
}

Ticker.prototype.onStart = function() {
  var self = this;
  self.current = 1;
  self.slide(self.current);
}
Ticker.prototype.slide = function(index) {
  var self = this;
  // var distance = $(self.msgs[index]).position().top;
  var distance = - (self.maxHeight + 5) * index;
  self.list.delay(self.duration).transition({
    y: distance
  }, self.duration, function() {
    index < self.length - 1 ? self.slide(index + 1) : self.slide(0);
  });

}

Ticker.prototype.findMaxHeight = function() {
  var self = this;
  self.maxHeight = 0;
  self.contents.each(function(i, e) {
    var height = $(e).outerHeight();
    self.maxHeight = height > self.maxHeight ? height : self.maxHeight;
  })
}

Ticker.prototype.setTickerHeight = function() {
  var self = this;
  self.object.add(self.msgs).css({
    height: self.maxHeight + 5
  });
}















