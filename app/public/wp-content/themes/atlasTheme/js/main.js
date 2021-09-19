jQuery(document).ready(function (jQuery) {
  jQuery(function () {
    initHoverBoxes();
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

  jQuery('.slick').slick({
    autoplay: true,
    autoplaySpeed: 2800,
    arrows: false
  });
});
