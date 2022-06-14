*** Settings ***
Library   SeleniumLibrary
Test Teardown     Close All Browsers

*** Variables ***
${LOGIN URL}      https://portal.qnet.net/
${Browser}    chrome
${IRID}    HZ105891
${Password}  testpw
${eCardsNo}    TESTING1234567
${eCardsPin}   PRDECT
${RetailID}    CU245925
${RetailPass}    T@stpw120

*** Test Cases ***

    
WP IR Enrolment
    Open Browser  ${LOGIN URL}  ${Browser}
    Maximize Browser Window
    Log     Hello workd
    Capture Page Screenshot

 
    