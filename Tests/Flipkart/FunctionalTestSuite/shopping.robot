*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_flipkart}  Flipkart
${url}  https://www.google.com/
${search_product}  iphone13

*** Test Cases ***
Google search
    [Documentation]  google search test
    [Tags]  google
    start test case
    Input Text  name:q  ${search_flipkart}
    submit form
    click element  class:LC20lb

Flipkart product search
    [Documentation]  searching products on flipkart
    [Tags]  flipkart
    sleep  2s
    click button  class:_2KpZ6l
    flipkart search
    sleep  2s
Flipkart product selection
    [Documentation]  selecting product
    [Tags]  flipkart
    click element  xpath=//html/body/div[1]/div/div[3]/div[1]/div[2]/div[2]/div/div/div/a/div[2]/div[1]/div[1]
    sleep  2s
Flipkart product buy
    [Documentation]  product purchase
    [Tags]  flipkart
    switch window  title:APPLE iPhone 13 ( 128 GB GB Storage, 0 GB RAM ) Online at Best Price On Flipkart.com
    click button  xpath=//html/body/div[1]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[2]/form/button
    sleep  5s

Flipkart user login
    [Documentation]  login
    [Tags]  flipkart
    input text  class:_2IX_2-  test@gmail.com
    click button  xpath=//html/body/div[1]/div/div[2]/div/div[1]/div[1]/div/div/div/div/div[1]/div/form/div[3]/button
    sleep  5s
    stop test case

*** Keywords ***


start test case
    Open Browser  ${url}  chrome
    maximize browser window
flipkart search
    Input Text  name:q  ${search_product}
    click button  class:L0Z3Pu
stop test case
    Close Browser