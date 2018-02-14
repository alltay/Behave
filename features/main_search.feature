Feature: Checking search (step)
Scenario Outline: Try to search
  Given website '/'
  Then clear by id 'search_input'
  Then insert by id 'search_input' '<text>'
  Then push on button by id 'search_submit'
  Then page wait '3'
  Then find element 'a' with text '<result>'
 Examples: querries
   | text     | result                                                          |
   | набор    | 8514 Набор для шитья и вышивания - текстильная сумка набор (МП) |
   | НВ-659   | НВ-659 Парящий зяблик (МП Студия)                               |
   | АО-008   | АО-008 "Пасхальная открытка-8" набор-открытка                   |
   | EH337    | EH337 Портрет девушки                                           |
   | CU029    | CU029 - Сердцеед                                                |
   | вт-1003  | ВТ-1003 "Черника" - чм                                          |
   | -000575  | MI-000575 Карнавальная ночь                                     |
   | П36      | П-36 Пионы и розы                                               |