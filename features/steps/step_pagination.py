
@then("find element with class '{tag}' and text '{text}'")
def step(context, tag, text):
    pagination=context.browser.find_element_by_class_name(tag)
    if pagination.text==text:
    	assert context.failed is False
    else:
    	assert context.failed is True
                           


