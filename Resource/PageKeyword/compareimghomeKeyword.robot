***Settings***
Library         AppiumLibrary
Library         RobotEyes
Resource        ../PageRepository/Android/compareImgRepository.robot
Resource        ../PageRepository/Android/changeLANGRepository.robot
Resource        ../PageRepository/Android/commonRepository.robot
***Keywords***
Capture Listviewhomepage and Compare images
    Sleep   3s
    Open Eyes    AppiumLibrary        5
    Sleep   3s
    Capture Element           ${listviewhomepage}                tolerance=2        name=listviewhomepage
    Swipe To This Element MNU       ${mnuDisneyHotstar}       Percent=80
    Capture Element           ${listviewhomepage}                tolerance=1        name=listviewhomepage1
    Swipe To This Element MNU         ${mnuSetting}           Percent=80 
    Capture Element           ${listviewhomepage}                tolerance=1        name=listviewhomepage2
    Compare Images