Feature: Checking product page (step)
Scenario: Checking head
  Given website 'https://www.mirkrestikom.ru/shop/goods/2691065_13666-dms-viktorianskoe-ocharovanie/'
  Then find element 'h1' with text '13666-DMS Викторианское очарование'
  Then page include by class 'path'
Scenario: Checking iages
  Then scroll to '600'
  Then page include by id 'divImage'
  Then page include by id 'divExtraImages'
Scenario: Checking images
  Then scroll to '700'
  Then page include by class 'spanPrice'
  Then page include by class 'add-to-fav'
  Then page include by class 'button_tocart'
Scenario: Checking info  
  Then scroll to '900'
  Then page include by class 'article_info2_list'
  Then find element 'h2' with text 'Характеристики'
  Then page include by class 'divTags'
Scenario: Checking RR 
  Then scroll to '1600'
  Then page include by class 'b-share-icons'
  Then page include by class 'retailrocket-widgettitle'
