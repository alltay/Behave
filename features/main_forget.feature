Feature: Checking forget page
@critical
Scenario: Try to get new pass
  Given website '/'
  Then push link with text 'вход'
  Then clear element by name 'email'
  Then insert in 'email' 'alltay@ya.ru'
  Then сlick on input button 'Выслать пароль'
  Then find element 'h4' with text 'E-mail подтверждение для alltay@ya.ru отправлено.'
