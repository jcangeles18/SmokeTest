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
WP IR Purchase
    Open Browser  ${LOGIN URL}  ${Browser}
    Maximize Browser Window
    Input Text    id=ctl00_ContentPlaceHolder1_txtTCO  ${IRID}
    Input Text    id=ctl00_ContentPlaceHolder1_txtPassword    ${Password}
    Click Button  id=ctl00_ContentPlaceHolder1_btnLogin
    Wait Until Element Is Visible    id=ctl00_TabMenu1_lbnShopNow
    Click Element     //a[@id='ctl00_TabMenu1_lbnShopNow']
    Switch Window  locator=NEW
    Sleep     10
    Click Element  //button[@id='btnConfirm']
    Click Element    //a[@href='products.aspx?Category=5150000']
    Click Element    //input[@name='ctl00$cphBody01$dtListMainProductList$ctl01$dtlistProduct$ctl07$cbAddToCart']
    Click Element    id=btnAddToCartMerged
    Click Element    id=chkAgree
    Wait Until Page Does Not Contain Element    //input[@disabled]
    Click Element    id=cmdConfirm
    Click Element    id=cmdOK
    Click Element    id=btnPlaceBank
    Click Element    id=dlPaymentModeButton_ctl01_ibtnPaymentModeButtonItem
    Input Text    id=dgGrid_ctl02_txtECardNo    ${eCardsNo}
    Input Text    id=dgGrid_ctl02_txtECardPin   ${eCardsPin}
    Click Element    id=dgGrid_ctl02_cmdValidate
    Click Element    id=cmdOK
    Wait Until Page Contains Element   id=imgLogo
    Capture Page Screenshot
    
# WP Retail Purchase
    # Open Browser  ${LOGIN URL}  ${Browser}
    # Maximize Browser Window
    # Input Text    id=ctl00_ContentPlaceHolder1_txtTCO  ${RetailID}
    # Input Text    id=ctl00_ContentPlaceHolder1_txtPassword    ${RetailPass}
    # Click Button  id=ctl00_ContentPlaceHolder1_btnLogin
    # Wait Until Element Is Visible    id=ctl00_TabMenu1_lbnShopNow    
    # Click Element     //a[@id='ctl00_TabMenu1_lbnShopNow']
    # Switch Window  locator=NEW
    # Sleep     10
    # Click Element  //button[@id='btnConfirm']
    # Click Element    //a[@href='products.aspx?Category=5150000']
    # Log     Hello workd
    # Capture Page Screenshot
    
# WP IR Enrolment
    # Open Browser  ${LOGIN URL}  ${Browser}
    # Maximize Browser Window
    # Log     Hello workd
    # Capture Page Screenshot
    
# WP Retail Enrolment
    # Open Browser  ${LOGIN URL}  ${Browser}
    # Maximize Browser Window
    # Log     Hello workd
    # Capture Page Screenshot


 
    