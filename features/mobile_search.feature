Feature: Checking search (step)
Scenario Outline: Try to search
  Given website '/?force_mobile=1'
  Then clear by id 'search_input'
  Then insert by id 'search_input' '<text>'
  Then push on button by id 'search_submit'
  Then page wait '3'
  Then find element 'div' with text '<result>'
  Then page include by class 'button-buy'
 Examples: querries
   | text                     | result                             |
   | викторианское            | 13666-DMS Викторианское очарование |
   | 13666-DMS                | 13666-DMS Викторианское очарование |
   | 13666                    | 13666-DMS Викторианское очарование |
   | Викторианское очарование | 13666-DMS Викторианское очарование |