***Settings***
Library         AppiumLibrary
Library         RobotEyes
Resource        ../PageRepository/Android/compareImgRepository.robot
Resource        ../PageRepository/Android/changeLANGRepository.robot

***Keywords***
Capture Images
    Sleep   3s
    Open Eyes    AppiumLibrary        5
    Sleep   3s
    Capture Element           ${mnuLIVETV}              tolerance=1        name=menuLIVETV_EN
    Capture Element           ${mnuLIVEFOOTBALL}        tolerance=1        name=menuLIVEFOOTBALLV_EN
    Capture Element           ${mnuFOOTBALL}            tolerance=1        name=menuFOOTBALLV_EN
    Capture Element           ${mnuOLYMPIC2020}         tolerance=1        name=menuOLYMPIC2020_EN
    Capture Element           ${mnuPARALYMPIC2020}      tolerance=1        name=menuPARALYMPIC2020_EN
    Capture Element           ${mnuTVCHANNELS}          tolerance=1        name=menuTVCHANNELS_EN
    Capture Element           ${mnuMOVIES}              tolerance=1        name=menuMOVIES_EN
    Capture Element           ${mnuSERIES}              tolerance=1        name=menuSERIES
    # Capture Element         ${listviewhomepage}       tolerance=10       name=taphomepage1          
    # Swipe By Percent    15    90    15    30           
    # Capture Element         ${listviewhomepage}       tolerance=10       name=taphomepage2
    # Swipe By Percent    15    90    15    30
    # Capture Element         ${listviewhomepage}       tolerance=10       name=taphomepage3
    Compare Images