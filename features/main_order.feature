Feature: Checking order
@blocker
Scenario: Make order
  Given website '/cabinet/'
  Then insert in 'pass' '11111'
  Then insert in 'uname' '11111'
  Then сlick on input button 'Войти'
@normal
Scenario: Making order
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
  Then scroll to '800' 
  Then clear by id 'orderform_name'
  Then insert by id 'orderform_name' 'Aвтотест удалить'
  Then clear by id 'orderform_email'
  Then insert by id 'orderform_email' 'alltay@ya.ru'
  Then clear by id 'orderform_comment'
  Then insert by id 'orderform_comment' 'Aвтотест удалить'
  Then scroll to '1500'
  Then push on button by class 'ssrs' and position '0'
  Then insert in 'address2' 'Aвтотест удалить'
  Then insert in 'address7' 'Aвтотест удалить'
  Then insert in 'address3' 'Aвтотест удалить'
  Then push link with id 'order_form_submit'
  Then screenshot
  Given website '/cabinet/off/'