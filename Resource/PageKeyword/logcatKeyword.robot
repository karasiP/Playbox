*** Settings ***
Library        AppiumLibrary
Library            Process


*** Keywords ***
Selete AIS Playbox
    Wait Until Element Is Visible                 xpath=(//*[@class="android.widget.Button"])[14]
    Click Element	        xpath=(//*[@class="android.widget.Button"])[14]
    Element Text Should Be                xpath=//*[@class="android.widget.TextView" and (@text="หน้าแรก" or @text="Home")]             หน้าแรก
    Capture Page Screenshot


Get logcat
    ${logcat}    Run Process      adb -s 192.168.2.19:6555 logcat


