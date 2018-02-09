Feature: Checking list (step)
Scenario Outline: Blenders
   Given websites <url>
  Then scroll to '300'
  Then page include by class 'view_count_options'
  Then select <order> from list by name <view>
  Then scroll to '400'
  Then page wait '3'
  Then page include by class 'info_item_table2'
  Then page include by class 'pagenav'
  Then page include by class 'ss-pagact'

 Examples: Brands
   | url                                                               | order           | view       |
   | https://www.mirkrestikom.ru/shop/nabori-dlya-vishivaniya-alisena/ | алфавиту        | view_order |
   | https://www.mirkrestikom.ru/shop/nabori-dlya-vishivaniya-alisena/ | рейтингу        | view_order |
   | https://www.mirkrestikom.ru/shop/nabori-dlya-vishivaniya-alisena/ | наличию         | view_order |
   | https://www.mirkrestikom.ru/shop/nabori-dlya-vishivaniya-alisena/ | цене (возр.)    | view_order |
   | https://www.mirkrestikom.ru/shop/nabori-dlya-vishivaniya-alisena/ | цене (убыв.)    | view_order |
   | https://www.mirkrestikom.ru/shop/nabori-dlya-vishivaniya-alisena/ | дате добавления | view_order |

 Examples: Tags
   | url                                                                  | order           | view       |
   | https://www.mirkrestikom.ru/shop/nabory-dlja-rukodelija-abstrakciya/ | алфавиту        | view_order |
   | https://www.mirkrestikom.ru/shop/nabory-dlja-rukodelija-abstrakciya/ | рейтингу        | view_order |
   | https://www.mirkrestikom.ru/shop/nabory-dlja-rukodelija-abstrakciya/ | наличию         | view_order |
   | https://www.mirkrestikom.ru/shop/nabory-dlja-rukodelija-abstrakciya/ | цене (возр.)    | view_order |
   | https://www.mirkrestikom.ru/shop/nabory-dlja-rukodelija-abstrakciya/ | цене (убыв.)    | view_order |
   | https://www.mirkrestikom.ru/shop/nabory-dlja-rukodelija-abstrakciya/ | дате добавления | view_order |

 Examples: Offers
   | url                                 | order           | view       |
   | https://www.mirkrestikom.ru/offers/ | алфавиту        | view_order |
   | https://www.mirkrestikom.ru/offers/ | рейтингу        | view_order |
   | https://www.mirkrestikom.ru/offers/ | наличию         | view_order |
   | https://www.mirkrestikom.ru/offers/ | цене (возр.)    | view_order |
   | https://www.mirkrestikom.ru/offers/ | цене (убыв.)    | view_order |
   | https://www.mirkrestikom.ru/offers/ | дате добавления | view_order |

 Examples: New
   | url                              | order           | view       |
   | https://www.mirkrestikom.ru/new/ | алфавиту        | view_order |
   | https://www.mirkrestikom.ru/new/ | рейтингу        | view_order |
   | https://www.mirkrestikom.ru/new/ | наличию         | view_order |
   | https://www.mirkrestikom.ru/new/ | цене (возр.)    | view_order |
   | https://www.mirkrestikom.ru/new/ | цене (убыв.)    | view_order |
   | https://www.mirkrestikom.ru/new/ | дате добавления | view_order |

 Examples: Special
   | url                                          | order           | view       |
   | https://www.mirkrestikom.ru/shop/vishivanki/ | алфавиту        | view_order |
   | https://www.mirkrestikom.ru/shop/vishivanki/ | рейтингу        | view_order |
   | https://www.mirkrestikom.ru/shop/vishivanki/ | наличию         | view_order |
   | https://www.mirkrestikom.ru/shop/vishivanki/ | цене (возр.)    | view_order |
   | https://www.mirkrestikom.ru/shop/vishivanki/ | цене (убыв.)    | view_order |
   | https://www.mirkrestikom.ru/shop/vishivanki/ | дате добавления | view_order |