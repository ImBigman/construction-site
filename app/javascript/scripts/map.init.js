import Turbolinks from 'turbolinks'

Turbolinks.start()

document.addEventListener('turbolinks:load', function () {
  $('.map').maphilight()
})
