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
//= require jquery3
//= require rails-ujs
//= require popper
//= require bootstrap-sprockets
//= require activestorage
//= require turbolinks
//= require_tree .


// Animate Services
// var animateServices = function() {
//   var revealService = function() {
//     $(this).css({
//       opacity: 1,
//       transform: 'scaleX(1) translateY(0)'
//     });
//   };
//
//   $.each($('.service-box'), revealService);
// };


$(document).on('turbolinks:load', function() {

  // Navbar color change on scroll
  // $(window).scroll(function() {
  //   if ($(document).scrollTop() > 50) {
  //     $('.navbar').addClass('scroll');
  //   } else {
  //     $('.navbar-default').removeClass('scroll');
  //   }
  // });

  // Nav link ease scroll to section
  $('a.js-scroll-trigger[href*="#"]:not([href="#"])').click(function() {
    if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
      if (target.length) {
        $('html, body').animate({
          scrollTop: (target.offset().top - 50)
        }, 1500, "easeInOutExpo");
        return false;
      }
    }
  });

  // Typed Animation
  // var header = {
  //   strings: ["^300 depression^300", "^300 social anxiety^300", "^300 bipolar disorder^300", "^300 attention deficit disorder^300", "^300 obsessive compuslive disorder^300", "^300 autism^300", "^300 insomnia^300"],
  //   typeSpeed: 40,
  //   backSpeed: 20,
  //   smartBackspace: true,
  //   loop: true
  // }

  var header = {
    strings: ["^300 An anonymous chat platform empowering UC Berkeley students to share their experiences pursuing mental wellness"],
    typeSpeed: 40,
  }

  var typed = new Typed(".header-content .typed", header);


  // Services ease-in transition on scroll
  // var scrollDistance = $('#services').offset().top - $(window).height() + 200;
  // $(window).scroll(function(event) {
  //   if ($(window).scrollTop() >= scrollDistance) {
  //     animateServices();
  //   }
  // });

});
