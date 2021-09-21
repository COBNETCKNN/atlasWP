jQuery(document).ready(function (jQuery) {
  jQuery(function () {
    initHoverBoxes();
    removeBlackOverlay();
  });

  function initHoverBoxes() {
    var $column = jQuery('.column');
    $column.mouseenter(function () {
      $column.removeClass('wide');
      $column.css('width', '15%');
      jQuery(this).addClass('wide');
    });
    $column.mouseleave(function () {
      $column.css('width', '80%');
      $column.removeClass('wide');
    });
  }

  function removeBlackOverlay() {
    var $blackOverlay = jQuery('.black_overlay');
    $blackOverlay.mouseenter(function () {
      $blackOverlay.remove('.black_overlay');
    });
    $blackOverlay.mouseleave(function () {
      $blackOverlay.remove('.black_overlay');
    });
  }

  jQuery('.slick').slick({
    autoplay: true,
    autoplaySpeed: 2800,
    arrows: false
  });
});
