Feature: Checking list
Scenario Outline: Change count
   Given website '<url>'
  Then scroll to '300'
  Then page include by class 'view_count_options'
  Then select <order> from list by name <view>
  Then scroll to '400'
  Then page include by class 'info_item_table2'
  Then page include by class 'pagenav'
  Then page include by class 'ss-pagact'

 Examples: Brands
   | url                                    | order | view       |
   | /shop/nabori-dlya-vishivaniya-alisena/ | Все   | view_count |
   | /shop/nabori-dlya-vishivaniya-alisena/ | 24    | view_count |
   | /shop/nabori-dlya-vishivaniya-alisena/ | 50    | view_count |
   | /shop/nabori-dlya-vishivaniya-alisena/ | 100   | view_count |
   | /shop/nabori-dlya-vishivaniya-alisena/ | 12    | view_count |
 
 Examples: Tags
   | url                                       | order | view       |
   | /shop/nabory-dlja-rukodelija-abstrakciya/ | Все   | view_count |
   | /shop/nabory-dlja-rukodelija-abstrakciya/ | 24    | view_count |
   | /shop/nabory-dlja-rukodelija-abstrakciya/ | 50    | view_count |
   | /shop/nabory-dlja-rukodelija-abstrakciya/ | 100   | view_count |
   | /shop/nabory-dlja-rukodelija-abstrakciya/ | 12    | view_count |

 Examples: Offers
   | url      | order | view       |
   | /offers/ | Все   | view_count |
   | /offers/ | 24    | view_count |
   | /offers/ | 50    | view_count |
   | /offers/ | 100   | view_count |
   | /offers/ | 12    | view_count |

 Examples: New
   | url   | order | view       |
   | /new/ | Все   | view_count |
   | /new/ | 24    | view_count |
   | /new/ | 50    | view_count |
   | /new/ | 100   | view_count |
   | /new/ | 12    | view_count |

 Examples: Special
   | url               | order | view       |
   | /shop/vishivanki/ | Все   | view_count |
   | /shop/vishivanki/ | 24    | view_count |
   | /shop/vishivanki/ | 50    | view_count |
   | /shop/vishivanki/ | 100   | view_count |
   | /shop/vishivanki/ | 12    | view_count |
