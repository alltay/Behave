from behave import *
import allure
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import Select


def before_all(context):
	context.browser = webdriver.Firefox()
	context.browser.maximize_window()

def after_all(context):
	context.browser.quit()

def after_step(context, step):
    if step.status == 'failed':
        step_str = step.name
        allure.attach(context.browser.get_screenshot_as_png(), 
        	          name='screenshot', attachment_type=allure.attachment_type.PNG)
