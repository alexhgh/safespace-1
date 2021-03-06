$(document).on('turbolinks:load', function() {

  // Navbar color change on scroll
  $(window).scroll(function() {
    if ($(document).scrollTop() > 50) {
      $('.navbar').addClass('scroll');
    } else {
      $('.navbar').removeClass('scroll');
    }
  });

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
  var typed = new Typed("#typed", {
    strings: ["^300 Anonymous chat platform empowering UC Berkeley students to share their experiences pursuing mental wellness"],
    typeSpeed: 40,
  });

  // Animate Steps
  var animateSteps = function() {
    var revealStep= function() {
      $(this).css({
        opacity: 1,
        transform: 'scaleX(1) translateY(0)'
      });
    };

    $.each($('.step'), revealStep);
  };

  // Steps ease-in transition on scroll
  var scrollDistance = $('#steps').offset().top - $(window).height() + 200;

  $(window).scroll(function(event) {
    if ($(window).scrollTop() >= scrollDistance) {
      animateSteps();
    }
  });

});
