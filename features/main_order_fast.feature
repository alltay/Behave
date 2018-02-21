Feature: Checking order
@blocker
Scenario: Login
  Given website '/cabinet/'
  Then insert in 'pass' '11111'
  Then insert in 'uname' '11111'
  Then сlick on input button 'Войти'
@normal
Scenario: Make Fast order
  Given website '/cabinet/'
  Given website '/shop/goods/2691065_13666-dms-viktorianskoe-ocharovanie/'
  Then scroll to '800'
  Then push link with id 'button_order'
  Then push on button by class 'cart-table-submit' and position '1'
  Then page include by class 'itemName'
  Then page include by class 'itemThumb'
  Then insert by id 'giftcard_code' 'testtest99'
  Then push link with id 'recalc_submity'
  Then scroll to '400'
  Then page include by class 'resultMsg'
  Then push link with text 'Покупка в 1 клик'
  Then screenshot
  Given website '/cabinet/off/'