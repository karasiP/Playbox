*** Settings ***
Resource            ../../Resource/PageKeyword/commonKeyword.robot
Resource            ../../Resource/PageKeyword/changeLANGkeyword.robot


*** Test Cases ***
(Change_LANG_1_1) Change UI Language AIS Play 
    Open app AIS play
    Choose Language
    Capture Page Screenshot
    [Teardown]         Keywords For Teardown