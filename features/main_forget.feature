@critical
Feature: Checking forget page (step)
Scenario: Try to get new pass
  Given website 'https://www.mirkrestikom.ru/'
  Then push link with text 'вход'
  Then insert in 'email' 'alltay@ya.ru'
  Then сlick on input button 'Выслать пароль'
  Then find element 'h4' with text 'E-mail подтверждение для alltay@ya.ru отправлено.'
