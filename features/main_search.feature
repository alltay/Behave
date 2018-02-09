@normal
Feature: Checking search (step)
Scenario: Try to search
  Given website "https://www.mirkrestikom.ru/"
  Then insert by id 'search_input' 'набор'
  Then push on button by id 'search_submit'
  Then find element 'a' with text 'МП Студия'
Scenario: Try to search НВ-659
  Given website "https://www.mirkrestikom.ru/"
  Then clear element by id 'search_input'
  Then insert by id 'search_input' 'НВ-659'
  Then push on button by id 'search_submit'
  Then find element 'a' with text 'НВ-659 Парящий зяблик (МП Студия)'
Scenario: Try to search АО-008
  Given website "https://www.mirkrestikom.ru/"
  Then clear element by id 'search_input'
  Then insert by id 'search_input' 'АО-008'
  Then push on button by id 'search_submit'
  Then find element 'a' with text 'АО-008 "Пасхальная открытка-8" набор-открытка'
Scenario: Try to search EH337
  Given website "https://www.mirkrestikom.ru/"
  Then clear element by id 'search_input'
  Then insert by id 'search_input' 'EH337'
  Then push on button by id 'search_submit'
  Then find element 'a' with text 'EH337 Портрет девушки'
Scenario: Try to search CU029
  Given website "https://www.mirkrestikom.ru/"
  Then clear element by id 'search_input'
  Then insert by id 'search_input' 'CU029'
  Then push on button by id 'search_submit'
  Then find element 'a' with text 'CU029 - Сердцеед'
Scenario: Try to search вт-1003
  Given website "https://www.mirkrestikom.ru/"
  Then clear element by id 'search_input'
  Then insert by id 'search_input' 'вт-1003'
  Then push on button by id 'search_submit'
  Then find element 'a' with text 'ВТ-1003 "Черника" - чм' 
Scenario: Try to search -000575
  Given website "https://www.mirkrestikom.ru/"
  Then clear element by id 'search_input'
  Then insert by id 'search_input' '-000575'
  Then push on button by id 'search_submit'
  Then find element 'a' with text 'MI-000575 Карнавальная ночь'
 Scenario: Try to search П36
  Given website "https://www.mirkrestikom.ru/"
  Then clear element by id 'search_input'
  Then insert by id 'search_input' 'П36'
  Then push on button by id 'search_submit'
  Then find element 'a' with text 'П-36 Пионы и розы'
