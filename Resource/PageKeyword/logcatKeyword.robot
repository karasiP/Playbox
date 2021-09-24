*** Settings ***
Library        AppiumLibrary
Library            Process


*** Keywords ***
Get logcat
    ${logcat}    Run Process      adb   devices 
    Log     ${logcat.stdout}
    ${logcat1}    Run Process      adb  logcat  ActivityManager     timeout=5min
    Log     ${logcat1.stdout}
    Terminate All Processes
