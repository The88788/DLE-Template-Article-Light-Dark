/*=========================================================================
        Theme toggle
=========================================================================*/
function toggleTheme() {
    var current = (typeof dle_current_skin !== 'undefined') ? dle_current_skin : '';
    var next = (current === 'Article-dark') ? 'Article' : 'Article-dark';
    window.location.href = window.location.pathname + '?action_skin_change=1&skin_name=' + next;
}

/*=========================================================================
            Home Slider
=========================================================================*/
$(document).ready(function() {
    "use strict";

    /*=========================================================================
            Move modals to <body> before header clone is created
    =========================================================================*/
    $('#modal-user, #modal-login').appendTo('body');

    /*=========================================================================
            Swiper sliders
    =========================================================================*/
    new Swiper('.post-carousel-lg', {
        effect: 'fade',
        fadeEffect: { crossFade: true },
        loop: true,
        pagination: {
            el: '.post-carousel-lg .swiper-pagination',
            clickable: true,
        },
        navigation: {
            prevEl: '.post-carousel-lg .swiper-button-prev',
            nextEl: '.post-carousel-lg .swiper-button-next',
        },
    });

    new Swiper('.post-carousel-featured', {
        slidesPerView: 1,
        spaceBetween: 24,
        pagination: {
            el: '.post-carousel-featured .swiper-pagination',
            clickable: true,
        },
        breakpoints: {
            576: { slidesPerView: 2 },
            1024: { slidesPerView: 3 },
            1200: { slidesPerView: 4 },
            1440: { slidesPerView: 5 },
        },
    });

    new Swiper('.post-carousel-twoCol', {
        slidesPerView: 1,
        spaceBetween: 24,
        navigation: {
            prevEl: '.carousel-topNav-prev',
            nextEl: '.carousel-topNav-next',
        },
        breakpoints: {
            576: { slidesPerView: 2 },
        },
    });

    new Swiper('.post-carousel-widget', {
        slidesPerView: 1,
        loop: true,
        autoplay: {
            delay: 10000,
            disableOnInteraction: false,
            pauseOnMouseEnter: true,
        },
        pagination: {
            el: '.post-carousel-widget .swiper-pagination',
            clickable: true,
        },
        breakpoints: {
            576: { slidesPerView: 2 },
            991: { slidesPerView: 1 },
        },
    });

  
    /*=========================================================================
            Vertical Menu
    =========================================================================*/
    $( ".submenu" ).before( '<i class="icon-arrow-down switch"></i>' );

    $(".vertical-menu li i.switch").on( 'click', function() {
        var $submenu = $(this).next(".submenu");
        $submenu.slideToggle(300);
        $submenu.parent().toggleClass("openmenu");
    });

    /*=========================================================================
            Canvas Menu
    =========================================================================*/
    $("button.burger-menu").on( 'click', function() {
      $(".canvas-menu").toggleClass("open");
      $(".main-overlay").toggleClass("active");
    });

    $(".canvas-menu .btn-close, .main-overlay").on( 'click', function() {
      $(".canvas-menu").removeClass("open");
      $(".main-overlay").removeClass("active");
    });

    /*=========================================================================
            Popups
    =========================================================================*/
    $("button.search").on( 'click', function() {
      $(".search-popup").addClass("visible");
    });

    $(".search-popup .btn-close").on( 'click', function() {
      $(".search-popup").removeClass("visible");
    });

    $(document).on('keyup', function(e) {
          if (e.key === "Escape") { // escape key maps to keycode `27`
            $(".search-popup").removeClass("visible");
        }
    });

    /*=========================================================================
            Tabs loader
    =========================================================================*/
    $('button[data-bs-toggle="tab"]').on( 'click', function() {
      $(".tab-pane").addClass("loading");
      $('.lds-dual-ring').addClass("loading");
      setTimeout(function () {
          $(".tab-pane").removeClass("loading");
          $('.lds-dual-ring').removeClass("loading");
      }, 500);
    });
    
    /*=========================================================================
            Social share toggle
    =========================================================================*/
    $('.post button.toggle-button').each( function() {
      $(this).on( 'click', function(e) {
        $(this).next('.social-share .icons').toggleClass("visible");
        $(this).toggleClass('icon-close').toggleClass('icon-share');
      });
    });

    /*=========================================================================
    Spacer with Data Attribute
    =========================================================================*/
    var list = document.getElementsByClassName('spacer');

    for (var i = 0; i < list.length; i++) {
      var size = list[i].getAttribute('data-height');
      list[i].style.height = "" + size + "px";
    }

    /*=========================================================================
    Background Image with Data Attribute
    =========================================================================*/
    var list = document.getElementsByClassName('data-bg-image');

    for (var i = 0; i < list.length; i++) {
      var bgimage = list[i].getAttribute('data-bg-image');
      list[i].style.backgroundImage  = "url('" + bgimage + "')";
    }

    /*=========================================================================
            Sticky header
    =========================================================================*/
    var $header = $(".header-default, .header-personal nav, .header-classic .header-bottom"),
      $clone = $header.before($header.clone().addClass("clone"));

    $(window).on("scroll", function() {
      var fromTop = $(window).scrollTop();
      $('body').toggleClass("down", (fromTop > 300));
    });

});

$(function(){
    "use strict";

    /*=========================================================================
            DLE prompt dialogs
    =========================================================================*/
    $(document).on('dialogopen', '#dlepopup.dle-promt', function() {
        $(this).closest('.ui-dialog').addClass('theme-prompt-dialog');
    });

    var enhanceQuickEditCategory = function($popup) {
        var $select = $popup.find('select#category');

        if (!$select.length || $select.data('theme-picker-ready')) {
            return;
        }

        $select.find('option').filter(function() {
            return $(this).val() === '0' && $.trim($(this).text()) === '';
        }).remove();

        var multiple = $select.prop('multiple');
        var $picker = $('<div class="theme-category-picker" role="listbox"></div>');

        if (multiple) {
            $picker.attr('aria-multiselectable', 'true');
        }

        $select.find('option').each(function() {
            var option = this;
            var $option = $(option);
            var label = $option.text();

            if ($.trim(label) === '') {
                return;
            }

            var $item = $('<button type="button" class="theme-category-option"></button>');
            $item.text(label.replace(/\u00a0/g, ' '));
            $item.attr('data-value', $option.val());

            var setState = function() {
                var selected = $option.prop('selected');
                $item.toggleClass('is-selected', selected).attr('aria-selected', selected ? 'true' : 'false');
            };

            $item.on('click', function() {
                if (multiple) {
                    $option.prop('selected', !$option.prop('selected'));
                } else {
                    $select.find('option').prop('selected', false);
                    $option.prop('selected', true);
                }

                $select.trigger('change');
                $picker.find('.theme-category-option').each(function() {
                    var value = $(this).attr('data-value');
                    $(this).toggleClass('is-selected', $select.find('option[value="' + value + '"]').prop('selected'));
                    $(this).attr('aria-selected', $(this).hasClass('is-selected') ? 'true' : 'false');
                });
            });

            setState();
            $picker.append($item);
        });

        $select.data('theme-picker-ready', true).addClass('theme-native-category-select').after($picker);
    };

    $(document).on('dialogopen', '#dlepopup-news-edit', function() {
        enhanceQuickEditCategory($(this));
    });

    enhanceQuickEditCategory($('.theme-addnews-form'));

    /*=========================================================================
            Sticky Sidebar
    =========================================================================*/
    var $sidebar = $('.sidebar');
    if ($sidebar.length) {
        var updateSidebarLayout = function() {
            $sidebar.removeClass('sidebar-sticky');

            if (window.matchMedia('(min-width: 992px)').matches && $sidebar.outerHeight(true) + 90 < window.innerHeight) {
                $sidebar.addClass('sidebar-sticky');
            }
        };

        var scheduleSidebarLayout = function() {
            setTimeout(function() {
                updateSidebarLayout();
            }, 1200);
        };

        updateSidebarLayout();
        $(window).on('load resize orientationchange', updateSidebarLayout);
        $(document).on('click', '.sidebar button[onclick*="doVote"], .sidebar button[onclick*="doPoll"]', scheduleSidebarLayout);
        $(document).ajaxComplete(scheduleSidebarLayout);
    }

});
