*** Settings ***
Library        AppiumLibrary
Resource        ../Localized/${ar_LANG}/commonLocalized.robot
Resource        ../PageRepository/${ar_OS}/commonRepository.robot

*** Keywords ***
Open app AIS play
    Open Application        http://localhost:4723/wd/hub	platformName=Android	platformVersion=7.1.2	
    ...         deviceName=192.168.43.90:6555	appPackage=com.ais.playbox.prod 	appActivity=net.vimmi.settopbox.ui.main.MainActivity
    ...         automationName=UiAutomator2    noReset=true


Swipe To This Element MNU
    [Arguments]    ${ThisElementXpath}    ${Direction}=UP    ${Percent}=60      ${Range}=12
    Sleep   3s
    FOR    ${INDEX}    IN RANGE    1    ${Range}
        ${FoundThisElement}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${ThisElementXpath}    1
        ${FoundThisElement}=    Convert To Boolean    ${FoundThisElement}
        Run Keyword If    "${FoundThisElement}"=="False" and "${Direction}" == "DOWN"    Swipe By Percent    15    50    15    ${Percent}
        Run Keyword If    "${FoundThisElement}"=="False" and "${Direction}" == "UP"    Swipe By Percent    15    ${Percent}    15    50
        Exit For Loop If    "${FoundThisElement}"=="True"
    END
    Run Keyword If    "${FoundThisElement}"=="False"    fail    This element is not found.

        

Choose Language
    Wait Until Element Is Visible    ${mnuHomePage}
    ${title}       Get Text          ${mnuHomePage}     
    Run Keyword If    ('${title}'=='HOME' and '${ar_LANG}'=='TH' ) or ('${title}'=='หน้าแรก' and '${ar_LANG}'=='EN' )    Change Language
    

Change Language
    Swipe To This Element MNU        ${mnuSetting}            Percent=80
    Click Element        ${mnuSetting}
    Wait Until Element Is Visible            ${mnuPreferences}
    Click Element        ${mnuPreferences}
    Wait Until Element Is Visible           ${mnuUILanguage}
    Click Element        ${mnuUILanguage}
    Run Keyword If    '${ar_LANG}'=='EN'    Click Element    ${rdoLanguageEnglish}
    Run Keyword If    '${ar_LANG}'=='TH'    Click Element    ${rdoLanguageThai}
    

Keywords For Teardown
    Run Keyword If Test Failed    Capture Page Screenshot
    Run Keyword And Ignore Error        Close Application
    
