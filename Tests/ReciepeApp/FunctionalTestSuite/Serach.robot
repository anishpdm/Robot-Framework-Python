#*** Settings ***
##Library  SeleniumLibrary
#Library  SeleniumLibrary
#
#*** Variables ***
#
#*** Test Cases ***
#This is a sample test case
#    [documentation]  Google test
#    [tags]  regression
#    OpenBrowser  http://www.google.com  chrome
#    Close Browser
#
#
#
#*** Keywords ***


#*** Settings ***
#Documentation     Simple example using SeleniumLibrary.
#Library           SeleniumLibrary

#
#*** Test Cases ***
#Valid Login
#    Open Browser    https://google.fr    chrome


*** Settings ***
Library  SeleniumLibrary
# Suite Setup     Open browser    ${URL}   ${BROWSER}
# Suite Teardown  Close All Browsers

*** Variables ***
${SEARCH_URL}       http://www.google.com
${search_form}      css=form[name=f]
${search_query}     css=input[name=q]
${search_term}      flipkart
${click_lt_link}    name:LC20lb

#Lambdatest URL details
${LT_URL}           https://accounts.lambdatest.com/login
${BROWSER}          Chrome
${user_id}          xpath=//input[@name='email']
${password}         xpath=//input[@id='userpassword']

*** Test Cases ***
Search for Lambdatest
    Open Browser  ${SEARCH_URL}  browser=${BROWSER}
    Wait Until Element Is Visible  ${search_query}
    Input Text      ${search_query}   ${EMPTY}
    Input Text      ${search_query}   ${search_term}
    Submit Form
    Click Element   class:LC20lb

Login on Lambdatest
    Click Button   class:_2KpZ6l
    Input Text      ${search_query}   iphone
    Click Element   class:L0Z3Pu


    Set Selenium Implicit Wait  5s
    Close All Browsers

*** Keywords ***
Enter userid and password
    Input Text  name:email      Testing@gmail.com
    Input Text  name:password   Testing123

Simulation of Action Chains
	sleep  5s
    Log    "Click on Test Logs"
    click element  //span[contains(.,'Issue Tracker')]
	sleep  5s
	Set Selenium Implicit Wait  5s