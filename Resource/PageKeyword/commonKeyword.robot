*** Settings ***
Library        AppiumLibrary

*** Keywords ***
Open app AIS play
    Open Application        http://localhost:4723/wd/hub	platformName=Android	platformVersion=7.1.2	
    ...         deviceName=192.168.43.90:6555	appPackage=com.ais.playbox.prod 	appActivity=net.vimmi.settopbox.ui.main.MainActivity
    ...         automationName=UiAutomator2    noReset=true


