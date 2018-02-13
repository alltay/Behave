@critical
Feature: Checking forget page (step)
Scenario: Open login page
  Given website "https://www.mirkrestikom.ru/"
  Then push link with text 'вход'
Scenario: Try to mail
  Then insert in 'email' 'alltay@ya.ru'
  Then сlick on input button 'Выслать пароль'
  Then page wait '2'
Scenario: Mail accept
  Then find element 'h4' with text 'E-mail подтверждение для alltay@ya.ru отправлено.'
