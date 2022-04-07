*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
start test case
    Open Browser  ${url}  chrome
    maximize browser window
flipkart search
    Input Text  name:q  ${search_product}
    click button  class:L0Z3Pu
stop test case
    Close Browser