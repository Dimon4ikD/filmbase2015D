#theRotator = ->
#  # Устанавливаем прозрачность всех картинок в 0
#  $('div#rotator ul li').css({opacity: 0.0})
#  # Берем первую картинку и показываем ее (по пути включаем полную видимость)
#  $('div#rotator ul li:first').css({opacity: 1.0})
#  # Вызываем функцию rotate для запуска слайдшоу, 5000 = смена картинок происходит раз в 5 секунд
#  setTimeout(theRotate(), 10000)
#  setInterval theRotate(5000)
#  return
#
#
#theRotate = ->
#  # Берем первую картинку
#
#  current = if $('div#rotator ul li.show') then $('div#rotator ul li.show') else $('div#rotator ul li:first')
#  # Берем следующую картинку, когда дойдем до последней начинаем с начала
#  next = if current.next().length then (if current.next().hasClass('show') then $('div#rotator ul li:first') else current.next()) else $('div#rotator ul li:first')
#  # Расскомментируйте, чтобы показвать картинки в случайном порядке
##  sibs = current.siblings()
##  rndNum = Math.floor(Math.random() * sibs.length )
##  next = $( sibs[ rndNum ] )
#  # Подключаем эффект растворения/затухания для показа картинок, css-класс show имеет больший z-index
#  next.css(opacity: 0.0).addClass('show').animate { opacity: 1.0 }, 1000
#  # Прячем текущую картинку
#  current.animate({ opacity: 0.0 }, 6000).removeClass 'show'
#  return
##
##theRotator = ->
##  # Устанавливаем прозрачность всех картинок в 0
##  $('div#rotator ul li').css({opacity: 0.0})
##  # Берем первую картинку и показываем ее (по пути включаем полную видимость)
##  $('div#rotator ul li:first').css({opacity: 1.0})
##  # Вызываем функцию rotate для запуска слайдшоу, 5000 = смена картинок происходит раз в 5 секунд
##  setInterval theRotate(), 800
##  return
#
#
#$(document).ready ->
#  # Запускаем слайдшоу
##  theRotator()
#  theRotator()
#  return




# ---
# generated by js2coffee 2.0.4

#
#
#total_pics_num = 3
## колличество изображений
#interval = 1000
## задержка между изображениями
#time_out = 1
## задержка смены изображений
#i = 0
##timeout = undefined
#opacity = 100
#
#fade_to_next = ->
#  opacity--
#  k = i + 1
#  image_now = 'image_' + i
#  if i == total_pics_num
#    k = 1
#  image_next = 'image_' + k
#  document.getElementById(image_now).style.opacity = opacity / 100
#  document.getElementById(image_now).style.filter = 'alpha(opacity=' + opacity + ')'
#  document.getElementById(image_next).style.opacity = (100 - opacity) / 100
#  document.getElementById(image_next).style.filter = 'alpha(opacity=' + 100 - opacity + ')'
#
##  document.getElementById(image_now).style.opacity = opacity/100
##  document.getElementById(image_now).style.filter = 'alpha(opacity='+ opacity +')'
##  document.getElementById(image_next).style.filter = 'alpha(opacity='+ (100-opacity) +')'
##  document.getElementById(image_next).style.opacity = (100-opacity)/100
#
#
#  document.getElementById(image_now).style.opacity = opacity/100
#  document.getElementById(image_now).style.filter = 'alpha(opacity='+ opacity +')'
#  document.getElementById(image_next).style.opacity = (100-opacity)/100
#  document.getElementById(image_next).style.filter = 'alpha(opacity='+ (100-opacity)
#  document.getElementById(image_now).style.opacity = opacity/100
#  timeout = setTimeout("fade_to_next()", time_out)
#  opacity--
#  if opacity == 1
#    opacity = 100
#    clearTimeout(timeout)
#  return
#
#setInterval (->
#  i++
#  if i > total_pics_num
#    i = 1
#  fade_to_next()
#  return
#), interval
#
## ---
# generated by js2coffee 2.0.4


