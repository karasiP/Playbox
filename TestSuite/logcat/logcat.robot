*** Settings ***
Resource            ../../Resource/PageKeyword/logcatKeyword.robot
Resource            ../../Resource/PageKeyword/commonKeyword.robot

*** Test Cases ***
Test Logcat
    Open app AIS play
    Get logcat
