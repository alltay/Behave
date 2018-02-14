Feature: Checking main page
Scenario: Checking banner
  Given website '/'
  Then page include by class 'banner-item'
  Then page include by class 'banner-dots'
@critical
Scenario: Checking elements
  Then page include by class 'SSCart'
  Then page include by class 'foraholliday'
  Then page include by class 'block_tags'
  Then page include by class 'footer_info_div'
  Then page include by class 'block48-content'
  Then page include by class 'block48-content'
Scenario: Checking Offers
  Given website '/'
  Then scroll to '700'
  Then push link with text 'Все товары по Акции'
  Then find element 'h1' with text 'Акции'
  Then page include by class 'info_item_table2'
Scenario: Checking New
  Given website '/'
  Then scroll to '1000'
  Then push link with text 'Все новинки'
  Then find element 'h1' with text 'Все новинки'
  Then page include by class 'info_item_table2'
Scenario: Checking Hits
  Given website '/'
  Then scroll to '1400'
  Then push link with text 'Все лидеры продаж'
  Then find element 'h1' with text 'Лидеры продаж'
  Then page include by class 'info_item_table2'
Scenario: Checking Sell
  Given website '/'
  Then scroll to '1800'
  Then push link with text 'Все товары распродажи'
  Then find element 'h1' with text 'Распродажи'
  Then page include by class 'info_item_table2'