Feature: Checking pagination
@critical
Scenario Outline: Product pages
   Given website '<url>'
  Then scroll to '300'
  Then page include by class 'pagenav'
  Then push link with text '<link>'
  Then scroll to '400'
  Then page include by class 'info_item_table2'
  Then page include by class 'pagenav'
  Then page include by class 'ss-pagact'

 Examples: Brands
   | url                                           | link | class     | text |
   | /shop/nabori-dlya-vishivaniya-alisena/        | 2    | ss-pagact | 2    |  
   | /shop/nabori-dlya-vishivaniya-alisena/        | 3    | ss-pagact | 3    |
   | /shop/nabori-dlya-vishivaniya-alisena/        | »    | ss-pagact | 2    |   
   | /shop/nabori-dlya-vishivaniya-alisena/page/2/ | «    | ss-pagact | 1    | 

 Examples: Tags
   | url                                              | link | class     | text |
   | /shop/nabory-dlja-rukodelija-23-fevralya/        | 2    | ss-pagact | 2    |  
   | /shop/nabory-dlja-rukodelija-23-fevralya/        | 3    | ss-pagact | 3    |
   | /shop/nabory-dlja-rukodelija-23-fevralya/        | »    | ss-pagact | 2    |   
   | /shop/nabory-dlja-rukodelija-23-fevralya/page/2/ | «    | ss-pagact | 1    | 
 
 Examples: Aditional
   | url                      | link | class     | text |
   | /shop/vishivanki/        | 2    | ss-pagact | 2    |  
   | /shop/vishivanki/        | 3    | ss-pagact | 3    |
   | /shop/vishivanki/        | »    | ss-pagact | 2    |   
   | /shop/vishivanki/page/2/ | «    | ss-pagact | 1    |
   | /shop/nabori-dlya-vishivaniya-nabori-dlya-vishivaniya-krestikom-nabori-dlya-vishivaniya-krestikom-cveti/        | 2    | ss-pagact | 2    |  
   | /shop/nabori-dlya-vishivaniya-nabori-dlya-vishivaniya-krestikom-nabori-dlya-vishivaniya-krestikom-cveti/        | 3    | ss-pagact | 3    |
   | /shop/nabori-dlya-vishivaniya-nabori-dlya-vishivaniya-krestikom-nabori-dlya-vishivaniya-krestikom-cveti/        | »    | ss-pagact | 2    |   
   | /shop/nabori-dlya-vishivaniya-nabori-dlya-vishivaniya-krestikom-nabori-dlya-vishivaniya-krestikom-cveti/page/2/ | «    | ss-pagact | 1    |

 Examples: Search
   | url                                                      | link | class     | text |
   | /search/#ssaf-contents?action=results&query=01           | 2    | ss-pagact | 2    |  
   | /search/#ssaf-contents?action=results&query=01           | 3    | ss-pagact | 3    |
   | /search/#ssaf-contents?action=results&query=01           | »    | ss-pagact | 2    |   
   | /search/#ssaf-contents?action=results&query=01&pagenum=2 | «    | ss-pagact | 1    |

Scenario Outline: Other pages
   Given website '<url>'
  Then scroll to '300'
  Then page include by class 'pagenav'
  Then push link with text '<link>'
  Then scroll to '400'
  Then page include by class 'last_stories_div'
  Then page include by class 'pagenav'
  Then page include by class 'ss-pagact'

 Examples: Articles
   | url               | link | class     | text |
   | /articles/        | 2    | ss-pagact | 2    |  
   | /articles/        | 3    | ss-pagact | 3    |
   | /articles/        | »    | ss-pagact | 2    |   
   | /articles/page/2/ | «    | ss-pagact | 1    | 

 Examples: News
   | url                  | link | class     | text |
   | /news/global/        | 2    | ss-pagact | 2    |  
   | /news/global/        | 3    | ss-pagact | 3    |
   | /news/global/        | »    | ss-pagact | 2    |   
   | /news/global/page/2/ | «    | ss-pagact | 1    |

Scenario Outline: GuestBook
   Given website '<url>'
  Then scroll to '300'
  Then page include by class 'pagenav'
  Then push link with text '<link>'
  Then scroll to '400'
  Then page include by class 'outer'
  Then page include by class 'pagenav'

 Examples: GuestBook
   | url                        | link | class     | text |
   | /company/guestbook/        | 2    | ss-pagact | 2    |  
   | /company/guestbook/        | 3    | ss-pagact | 3    |
   | /company/guestbook/        | »    | ss-pagact | 2    |   
   | /company/guestbook/?page=2 | «    | ss-pagact | 1    |