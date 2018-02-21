Feature: Checking filters
@blocker
Scenario: Login
  Given website '/cabinet/?force_mobile=1'
  Then insert in 'pass' '11111'
  Then insert in 'uname' '11111'
  Then сlick on input button 'Войти'
@normal
Scenario: Make order mobile
  Given website '/shop/goods/2691065_13666-dms-viktorianskoe-ocharovanie/?force_mobile=1'
  Then scroll to '1200'
  Given website '/shop/goods/2691065_13666-dms-viktorianskoe-ocharovanie/?force_mobile=1'
  Then scroll to '1200'
  Then сlick on img by title 'Купить!'
  Given website '/details/?force_mobile=1'
  Then scroll to '300'
  Then clear by id 'orderform_name'
  Then insert by id 'orderform_name' 'Aвтотест удалить'
  Then clear by id 'orderform_email'
  Then insert by id 'orderform_email' 'alltay@ya.ru'
  Then clear by id 'orderform_comment'
  Then insert by id 'orderform_comment' 'Aвтотест мобильная версия удалить'
  Then scroll to '900'
  Then insert by id 'giftcard_code' 'testtest99'
  Then push link with id 'recalc_submit'
  Then scroll to '600'
  Then push on button by class 'ssrs' and position '0'
  Then scroll to '800'
  Then insert in 'address2' 'Aвтотест удалить'
  Then insert in 'address7' 'Aвтотест удалить'
  Then insert in 'address3' 'Aвтотест удалить'
  Then scroll to '1000'
  Then push link with id 'order_form_submit'
  Then page wait '4'
  Then screenshot
  Given website '/cabinet/off/'