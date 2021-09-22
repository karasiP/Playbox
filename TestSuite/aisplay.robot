*** Settings ***
Resource            ../Resource/PageKeyword/commonKeyword.robot

*** Test Cases ***
Test AIS Playbox
    Open app AIS play
    Selete AIS Playbox
    Get logcat
    Close Application