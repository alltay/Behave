Feature: Checking filters
@normal
Scenario: Multi filter
  Given website '/shop/nabori-dlya-vishivaniya/'
  Then scroll to '500'
  Then push link with id 'filter_block_offers'
  Then push link with id 'filter_block_new'
  Then push link with id 'filter_block_hits'
  Then scroll to '800'
  Then push link with id 'filter_1_Alisena'
  Then scroll to '3500'
  Then push link with id 'filter_21_полная'
  Then push link with text 'Показать →'
  Then page include by class 'info_item_table2'
@normal
Scenario Outline: Single filter
  Given website '<url>'
  Then scroll to '<scroll>'
  Then push link with id '<filter>'
  Then push link with text 'Показать →'
  Then page include by class 'info_item_table2'
 Examples: Scroll to
   | scrol  | filter                   | url                                    |
   | 500    | filter_block_offers      | /shop/nabori-dlya-vishivaniya-alisena/ |
   | 900    | filter_2_вышивка крестом | /shop/nabori-dlya-vishivaniya-alisena/ |
   | 1800   | filter_21_полная         | /shop/nabori-dlya-vishivaniya-alisena/ |
   | 2000   | filter_4_0-10            | /shop/nabori-dlya-vishivaniya-alisena/ |
   | 2500   | filter_5_0-10            | /shop/nabori-dlya-vishivaniya-alisena/ |
   | 2800   | filter_8_14              | /shop/nabori-dlya-vishivaniya-alisena/ |
   | 3500   | filter_10_хлопок         | /shop/nabori-dlya-vishivaniya-alisena/ |
   | 5000   | filter_tags_Ангелы       | /shop/nabori-dlya-vishivaniya-alisena/ |