@critical
Feature: Checking login (step)
Scenario: Open login page
  Given website 'https://www.mirkrestikom.ru/'
  Then push link with text 'вход'
Scenario: Try to login
  Then insert in 'pass' '11111'
  Then insert in 'uname' '11111'
  Then сlick on input button 'Войти'
Scenario: Try to open profile
  Given website 'https://www.mirkrestikom.ru/'
  Then push link with text 'ваш кабинет'
Scenario: Try logout
  Then push link with text 'Выход'
Scenario: Open login page again
  Then push link with text 'вход'