# swaglabs
Automation For Sauce lab

# Approach Taken : 
Robot Framework using Python and Selenium

# Pre-Requisites :
    Technology : Python
    Framework  : Robot Framework
    IDE        : PyCharm Community
    Library    : Selenium
    
# Steps: 
Create Test Cases: Created critical testcases for the ecommerce website 

Locate Elements:     Used browser developer tools to inspect elements on the pages and Identified unique attributes using IDs or classes to locate different elements.

Execute Test Case :     Executed test case using the Robot Framework command-line interface with approriate drivers installed for the browser (e.g., ChromeDriver for Chrome).

Reporting : Utilized Robot Framework's built-in reporting and logging capabilities to track test execution and results.

# Project have 4 main directory i.e. Locators, Variables, Keywords and TestSuites.
Locators   :- Here all the xpath are listed which is required in the project.

Variable   :- Variable contains the value which we are going to keep constant throughout

Keyword    :- Keyword is just like a method which contains set of steps where you can pass the argument and returns the value as well and can be called anywhere in your test just by calling the method name same way it goes with keyword.

Test Cases :- Contains the set of steps to execute
 
# Critical Tests automated : which is critical areas for any ecommerce website to be functioning correctly.
Login Flow(Valid and invalid cases)

Cart Flow(AddProduct, PurchaseProduct, removeproduct, User information verification, successfull purchase) 

Logout flow 
