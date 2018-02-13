@normal
Feature: Checking qsearch (step)
Scenario: Try to search
  Given website "https://www.mirkrestikom.ru/"
  Then insert by id 'search_input' 'набор'
  Then page wait '3'
  Then find element 'a' with text 'МП Студия'
Scenario: Try to search НВ-659
  Then clear element by id 'search_input'
  Then insert by id 'search_input' 'НВ-659'
  Then page wait '3'
  Then find element 'a' with text 'НВ-659 Парящий зяблик (МП Студия)'
Scenario: Try to search АО-008
  Then clear element by id 'search_input'
  Then insert by id 'search_input' 'АО-008'
  Then page wait '3'
  Then find element 'a' with text 'АО-008 "Пасхальная открытка-8" набор-открытка'
Scenario: Try to search EH337
  Then clear element by id 'search_input'
  Then insert by id 'search_input' 'EH337'
  Then page wait '3'
  Then find element 'a' with text 'EH337 Портрет девушки'
Scenario: Try to search CU029
  Then clear element by id 'search_input'
  Then insert by id 'search_input' 'CU029'
  Then page wait '3'
  Then find element 'a' with text 'CU029 - Сердцеед'
Scenario: Try to search вт-1003
  Then clear element by id 'search_input'
  Then insert by id 'search_input' 'вт-1003'
  Then page wait '3'
  Then find element 'a' with text 'ВТ-1003 "Черника" - чм' 
Scenario: Try to search -000575
  Then clear element by id 'search_input'
  Then insert by id 'search_input' '-000575'
  Then page wait '3'
  Then find element 'a' with text 'MI-000575 Карнавальная ночь'
 Scenario: Try to search П36
  Then clear element by id 'search_input'
  Then insert by id 'search_input' 'П36'
  Then page wait '3'
  Then find element 'a' with text 'П-36 Пионы и розы'
