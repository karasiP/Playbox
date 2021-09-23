*** Settings ***
Resource            ../../Resource/PageKeyword/commonKeyword.robot
Resource            ../../Resource/PageKeyword/changeLANGkeyword.robot


*** Test Cases ***
(Change_LANG_1_1) Change UI Language AIS Play 
    Open app AIS play
    Choose Language
    Verify Home Page 
    [Teardown]         Keywords For Teardown