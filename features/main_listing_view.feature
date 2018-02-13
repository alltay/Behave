Feature: Checking list (step)
Scenario Outline: Blenders
   Given websites <url>
  Then scroll to '300'
  Then page include by class 'view_count_options'
  Then select <order> from list by name <view>
  Then scroll to '400'
  Then page include by class 'info_item_table2'
  Then page include by class 'pagenav'
  Then page include by class 'ss-pagact'

 Examples: Brands
   | url                                                               | order | view       |
   | https://www.mirkrestikom.ru/shop/nabori-dlya-vishivaniya-alisena/ | 12    | view_count |
   | https://www.mirkrestikom.ru/shop/nabori-dlya-vishivaniya-alisena/ | 24    | view_count |
   | https://www.mirkrestikom.ru/shop/nabori-dlya-vishivaniya-alisena/ | 50    | view_count |
   | https://www.mirkrestikom.ru/shop/nabori-dlya-vishivaniya-alisena/ | 100   | view_count |
   | https://www.mirkrestikom.ru/shop/nabori-dlya-vishivaniya-alisena/ | Все   | view_count |

 Examples: Tags
   | url                                                                  | order | view       |
   | https://www.mirkrestikom.ru/shop/nabory-dlja-rukodelija-abstrakciya/ | 12    | view_count |
   | https://www.mirkrestikom.ru/shop/nabory-dlja-rukodelija-abstrakciya/ | 24    | view_count |
   | https://www.mirkrestikom.ru/shop/nabory-dlja-rukodelija-abstrakciya/ | 50    | view_count |
   | https://www.mirkrestikom.ru/shop/nabory-dlja-rukodelija-abstrakciya/ | 100   | view_count |
   | https://www.mirkrestikom.ru/shop/nabory-dlja-rukodelija-abstrakciya/ | Все   | view_count |

 Examples: Offers
   | url                                 | order | view       |
   | https://www.mirkrestikom.ru/offers/ | 12    | view_count |
   | https://www.mirkrestikom.ru/offers/ | 24    | view_count |
   | https://www.mirkrestikom.ru/offers/ | 50    | view_count |
   | https://www.mirkrestikom.ru/offers/ | 100   | view_count |
   | https://www.mirkrestikom.ru/offers/ | Все   | view_count |

 Examples: New
   | url                              | order | view       |
   | https://www.mirkrestikom.ru/new/ | 12    | view_count |
   | https://www.mirkrestikom.ru/new/ | 24    | view_count |
   | https://www.mirkrestikom.ru/new/ | 50    | view_count |
   | https://www.mirkrestikom.ru/new/ | 100   | view_count |
   | https://www.mirkrestikom.ru/new/ | Все   | view_count |

 Examples: Special
   | url                                          | order| view       |
   | https://www.mirkrestikom.ru/shop/vishivanki/ | 12   | view_count |
   | https://www.mirkrestikom.ru/shop/vishivanki/ | 24   | view_count |
   | https://www.mirkrestikom.ru/shop/vishivanki/ | 50   | view_count |
   | https://www.mirkrestikom.ru/shop/vishivanki/ | 100  | view_count |
   | https://www.mirkrestikom.ru/shop/vishivanki/ | Все  | view_count |
