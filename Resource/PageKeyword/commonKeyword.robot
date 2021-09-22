*** Settings ***
Library        AppiumLibrary
Library            Process
Library            RobotAppEyes


*** Keywords ***
Open app AIS play
    Open Application        http://localhost:4723/wd/hub	platformName=Android	platformVersion=7.1.2	
    ...         deviceName=192.168.2.19:6555	appPackage=com.ais.mimo.AISPlaybox play 	appActivity=net.vimmi.lib.ui.main.MainActivity  
    ...         automationName=UiAutomator2    noReset=true

Selete AIS Playbox
    Wait Until Element Is Visible                 xpath=(//*[@class="android.widget.Button"])[14]
    Click Element	        xpath=(//*[@class="android.widget.Button"])[14]
    Element Text Should Be                xpath=//*[@class="android.widget.TextView" and (@text="หน้าแรก" or @text="Home")]             หน้าแรก
    Capture Page Screenshot


Get logcat
    ${logcat}    Run Process      adb -s 192.168.2.19:6555 logcat


