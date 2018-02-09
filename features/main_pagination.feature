Feature: Checking pagination (pagination)
Scenario Outline: Pagination
   Given websites <url>
    Then scroll to '400'
    Then page include by class 'pagenav'
    Then page include by class 'ss-pagact'
    Then push link with text '2'
    Then page wait '1'
    Then page include by class 'pagenav'
    Then page include by class 'ss-pagact'
 Examples: Pages
   | url                                                                  | order           | view       |
   | https://www.mirkrestikom.ru/shop/nabori-dlya-vishivaniya-alisena/    | алфавиту        | view_order |
   | https://www.mirkrestikom.ru/shop/nabory-dlja-rukodelija-abstrakciya/ | рейтингу        | view_order |
   | https://www.mirkrestikom.ru/offers/                                  | наличию         | view_order |
   | https://www.mirkrestikom.ru/new/                                     | цене (возр.)    | view_order |
   | https://www.mirkrestikom.ru/shop/vishivanki/                         | цене (убыв.)    | view_order |