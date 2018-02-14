Feature: Checking list
Scenario Outline: Change sort
   Given website '<url>'
  Then scroll to '300'
  Then page include by class 'view_count_options'
  Then select <order> from list by name <view>
  Then scroll to '400'
  Then page include by class 'info_item_table2'
  Then page include by class 'pagenav'
  Then page include by class 'ss-pagact'

 Examples: Brands
   | url                                    | order           | view       |
   | /shop/nabori-dlya-vishivaniya-alisena/ | алфавиту        | view_order |
   | /shop/nabori-dlya-vishivaniya-alisena/ | рейтингу        | view_order |
   | /shop/nabori-dlya-vishivaniya-alisena/ | наличию         | view_order |
   | /shop/nabori-dlya-vishivaniya-alisena/ | цене (возр.)    | view_order |
   | /shop/nabori-dlya-vishivaniya-alisena/ | цене (убыв.)    | view_order |
   | /shop/nabori-dlya-vishivaniya-alisena/ | дате добавления | view_order |

 Examples: Tags
   | url                                       | order           | view       |
   | /shop/nabory-dlja-rukodelija-abstrakciya/ | алфавиту        | view_order |
   | /shop/nabory-dlja-rukodelija-abstrakciya/ | рейтингу        | view_order |
   | /shop/nabory-dlja-rukodelija-abstrakciya/ | наличию         | view_order |
   | /shop/nabory-dlja-rukodelija-abstrakciya/ | цене (возр.)    | view_order |
   | /shop/nabory-dlja-rukodelija-abstrakciya/ | цене (убыв.)    | view_order |
   | /shop/nabory-dlja-rukodelija-abstrakciya/ | дате добавления | view_order |

 Examples: Offers
   | url      | order           | view       |
   | /offers/ | алфавиту        | view_order |
   | /offers/ | рейтингу        | view_order |
   | /offers/ | наличию         | view_order |
   | /offers/ | цене (возр.)    | view_order |
   | /offers/ | цене (убыв.)    | view_order |
   | /offers/ | дате добавления | view_order |

 Examples: New
   | url   | order           | view       |
   | /new/ | алфавиту        | view_order |
   | /new/ | рейтингу        | view_order |
   | /new/ | наличию         | view_order |
   | /new/ | цене (возр.)    | view_order |
   | /new/ | цене (убыв.)    | view_order |
   | /new/ | дате добавления | view_order |

 Examples: Special
   | url               | order           | view       |
   | /shop/vishivanki/ | алфавиту        | view_order |
   | /shop/vishivanki/ | рейтингу        | view_order |
   | /shop/vishivanki/ | наличию         | view_order |
   | /shop/vishivanki/ | цене (возр.)    | view_order |
   | /shop/vishivanki/ | цене (убыв.)    | view_order |
   | /shop/vishivanki/ | дате добавления | view_order |