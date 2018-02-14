# -*- coding: utf-8 -*-
from behave import *
import allure

from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import Select
import time


# Open page
@given("website '{url}'")
def step(context, url):
    context.browser.get(url)
    
# Scroll down
@then("scroll to '{text}'")
def step(context, text):
    context.browser.execute_script("window.scrollTo(0, '%s');" % text)

# Click on link
@then("push link with text '{text}'")
def step(context, text):
    WebDriverWait(context.browser, 5).until(
        EC.element_to_be_clickable((By.XPATH, 
                                    '//a[text()="%s"]' % text)))
    context.browser.find_element_by_xpath('//a[text()="%s"]' % text).click()

# Click on button by id
@then("push on button by id '{text}'")
def step(context, text):
    WebDriverWait(context.browser, 5).until(
        EC.element_to_be_clickable((By.ID, text)))
    context.browser.find_element_by_id(text).click()

# Find element by class name
@then("page include by class '{text}'")
def step(context, text):
    WebDriverWait(context.browser, 5).until(
        EC.element_to_be_clickable((By.CLASS_NAME, text)))

# Find element by id
@then("page include by id '{text}'")
def step(context, text):
    WebDriverWait(context.browser, 5).until(
        EC.element_to_be_clickable((By.ID, text)))

# Find element by id and insert
@then("insert by id '{id}' '{text}'")
def step(context, id ,text):
    WebDriverWait(context.browser, 5).until(
        EC.presence_of_element_located((By.ID, id)))
    context.browser.find_element_by_id(id).send_keys(text)

# Find element by id and clear
@then("clear by id '{id}'")
def step(context, id):
    WebDriverWait(context.browser, 5).until(
        EC.presence_of_element_located((By.ID, id)))
    context.browser.find_element_by_id(id).clear()

# Find text by element tag
@then("find element '{tag}' with text '{text}'")
def step(context, tag, text):
    context.browser.find_element(By.XPATH,
                             "//%s[contains(text(), '%s')]" % (tag, text))
# Clear element by id
@then("clear element by id '{text}'")
def step(context, text):
    WebDriverWait(context.browser, 5).until(
        EC.presence_of_element_located((By.ID, text)))
    context.browser.find_element_by_id(text).clear()

# Clear element by name
@then("clear element by name '{text}'")
def step(context, text):
    WebDriverWait(context.browser, 5).until(
        EC.presence_of_element_located((By.NAME, text)))
    context.browser.find_element_by_name(text).clear()

# Find element by name and insert
@then("insert in '{field}' '{text}'")
def step(context, field, text):
    WebDriverWait(context.browser, 5).until(
        EC.presence_of_element_located((By.NAME, field)))
    context.browser.find_element(By.NAME, field).send_keys(text)

# Click on input button 
@then("сlick on input button '{text}'")
def step(context, text):
    WebDriverWait(context.browser, 5).until(
        EC.element_to_be_clickable((By.XPATH, 
                                    '//input[@value="%s"]' % text)))
    context.browser.find_element_by_xpath('//input[@value="%s"]' % text).click()

# Select from list by class
@then(u"select {field} from list by name {text}")
def step(context, field, text):
    WebDriverWait(context.browser, 5).until(
        EC.presence_of_element_located((By.NAME, text)))   
    select = Select(context.browser.find_element_by_name(text))
    select.select_by_visible_text(field)

# Sleep
@then("page wait '{text}'")
def step(context, text):
	time.sleep(int(text))




