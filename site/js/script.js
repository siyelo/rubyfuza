(function($) {
  $.localScroll({ offset: -80 })

  $('#sponsors').on('mouseover click', 'li', function(event) {
    $('.big-sponsor').addClass('hidden')
    $('.' + this.id + '.big-sponsor').removeClass('hidden')
  })
})(jQuery)
