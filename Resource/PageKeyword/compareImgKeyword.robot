***Settings***
Library         AppiumLibrary
Library         RobotEyes
Resource        ../PageRepository/Android/compareImgRepository.robot
Resource        ../PageRepository/Android/changeLANGRepository.robot
Resource        ../PageRepository/Android/commonRepository.robot

***Keywords***
Capture Images and Compare Element 
    Sleep   3s
    Open Eyes    AppiumLibrary        5
    Sleep   3s
    Capture Element           ${mnuHomePage}            tolerance=1        name=menuHomepage
    Capture Element           ${mnuLIVETV}              tolerance=1        name=menuLIVETV
    Capture Element           ${mnuLIVEFOOTBALL}        tolerance=1        name=menuLIVEFOOTBALLV
    Capture Element           ${mnuFOOTBALL}            tolerance=1        name=menuFOOTBALLV
    Capture Element           ${mnuOLYMPIC2020}         tolerance=1        name=menuOLYMPIC2020
    Capture Element           ${mnuPARALYMPIC2020}      tolerance=1        name=menuPARALYMPIC2020
    Capture Element           ${mnuTVCHANNELS}          tolerance=1        name=menuTVCHANNELS
    Capture Element           ${mnuMOVIES}              tolerance=1        name=menuMOVIES
    Capture Element           ${mnuSERIES}              tolerance=1        name=menuSERIES        
    Swipe By Percent    15    90    15    30   
    Capture Element           ${mnuVARIETIES}              tolerance=1        name=menuVARIETIES
    Capture Element           ${mnuCONCERTMV}              tolerance=1        name=menuCONCERTMV
    Capture Element           ${mnuKIDS}                   tolerance=1        name=menuKIDS
    Capture Element           ${mnuANIME}                  tolerance=1        name=menuANIME
    Capture Element           ${mnuSPORTS}                 tolerance=1        name=menuSPORTS
    Capture Element           ${mnuPLAYNEWS}               tolerance=1        name=menuPLAYNEWS
    Capture Element           ${mnuAIS360CHANNELS}         tolerance=1        name=menuAIS360CHANNEL
    Capture Element           ${mnuNETFLIX}                tolerance=1        name=menuNETFLIX
    Capture Element           ${mnuDisneyHotstar}          tolerance=1        name=menuDisneyHotstar
    Swipe By Percent    15    90    15    30
    Capture Element           ${mnuWeTV}                   tolerance=1        name=menuWeTV
    Capture Element           ${mnuVIU}                    tolerance=1        name=menuVIU
    Capture Element           ${mnuAISKARAOKE}             tolerance=1        name=menuAISKARAOKE
    Capture Element           ${mnuPARTNER}                tolerance=1        name=menuPARTNER
    Capture Element           ${mnuBROWSER}                tolerance=1        name=menuBROWSER
    Capture Element           ${mnuINBOX}                  tolerance=1        name=menuINBOX
    Capture Element           ${mnuSetting}                tolerance=1        name=menuSETTINGS
    Compare Images

Capture Listviewhomepage and Compare image
    Sleep   3s
    Open Eyes    AppiumLibrary        5
    Sleep   3s
    Capture Element           ${listviewhomepage}                tolerance=1        name=listviewhomepage
    Compare Images