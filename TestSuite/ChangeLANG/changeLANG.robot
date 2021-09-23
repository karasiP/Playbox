*** Settings ***
Resource            ../../Resource/PageKeyword/commonKeyword.robot
Resource            


*** Test Cases ***
(Change_LANG_1_1) Change UI Language AIS Play 
    Open app AIS play
    Choose Language
    Change Language 