$(function () {
  'use strict';

  // 页面最小高度
  (function () {
    'use strict';

    var $win = $(window);
    var $bodyWrap = $('.body-wrap');

    function resizeBody() {
      $bodyWrap.css('min-height', $win.height() - 128);
    }

    resizeBody();

    $win.on('resize.resizeBody', resizeBody);

  })();

});
