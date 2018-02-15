Feature: Checking add to fav
@blocker
Scenario: Login
  Given website '/cabinet/'
  Then insert in 'pass' 'ium3en'
  Then insert in 'uname' 'test04012018@yandex.ru'
  Then сlick on input button 'Войти'
@normal
Scenario: Add and delete fom fav
  Given website '/shop/goods/2691065_13666-dms-viktorianskoe-ocharovanie/'
  Then scroll to '800'
  Then push link with id 'add-to-fav'
  Then push link with text 'здесь'
  Then page include by class 'info_item_table2'
  Then scroll to '500'
  Then push link with text 'Удалить из избранного'
  Then find element 'div' with text 'Тест Удалить, ни  один товар не был добавлен Вами в избранное. Чтобы добавить сюда товар, перейдите на страницу конкретного товара и нажмите на кнопку "Добавить в избранное".'
@normal
Scenario: Add and clean fav
  Given website '/shop/goods/2691065_13666-dms-viktorianskoe-ocharovanie/'
  Then scroll to '800'
  Then push link with id 'add-to-fav'
  Then push link with text 'здесь'
  Then page include by class 'info_item_table2'
  Then scroll to '500'
  Then push link with text 'Очистить избранное'
  Then page wait '3'
  Then accept alert 'accept'
  Then page wait '3'
  Then find element 'div' with text 'Тест Удалить, ни  один товар не был добавлен Вами в избранное. Чтобы добавить сюда товар, перейдите на страницу конкретного товара и нажмите на кнопку "Добавить в избранное".'
  Given website '/cabinet/off/'