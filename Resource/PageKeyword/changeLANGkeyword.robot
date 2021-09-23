*** Settings ***
Library        AppiumLibrary
Resource        ../Localized/${ar_LANG}/changeLANGLocalized.robot
Resource        ../PageRepository/${ar_OS}/changeLANGRepository.robot
Resource        ./commonKeyword.robot
Resource        ../PageRepository/${ar_OS}/commonRepository.robot

*** Keywords ***
Verify Home Page 
    Element Text Should Be            ${mnuHomePage}              ${HOME}
    Element Text Should Be            ${mnuLIVETV}                ${LIVETV}
    Element Text Should Be            ${mnuLIVEFOOTBALL}          ${LIVEFOOTBALL}
    Element Text Should Be            ${mnuFOOTBALL}              ${FOOTBALL}
    Element Text Should Be            ${mnuOLYMPIC2020}           ${OLYMPIC2020}
    Element Text Should Be            ${mnuPARALYMPIC2020}        ${PARALYMPIC2020}
    Element Text Should Be            ${mnuTVCHANNELS}            ${TVCHANNELS}
    Element Text Should Be            ${mnuMOVIES}                ${MOVIES}
    Element Text Should Be            ${mnuSERIES}                ${SERIES}
    Capture Page Screenshot          Verify Home Page1.png  
    Swipe To This Element MNU         ${mnuNETFLIX}        Percent=80
    Element Text Should Be            ${mnuVARIETIES}                ${VARIETIES}
    Element Text Should Be            ${mnuCONCERTMV}                ${CONCERTMV} 
    Element Text Should Be            ${mnuKIDS}                     ${KIDS} 
    Element Text Should Be            ${mnuANIME}                    ${ANIME} 
    Element Text Should Be            ${mnuSPORTS}                   ${SPORTS} 
    Element Text Should Be            ${mnuPLAYNEWS}                 ${PLAYNEWS} 
    Element Text Should Be            ${mnuAIS360CHANNELS}           ${AIS360CHANNELS}
    Element Text Should Be            ${mnuNETFLIX}                  ${NETFLIX}
    Element Text Should Be            ${mnuDisneyHotstar}            ${DisneyHotstar}
    Capture Page Screenshot          Verify Home Page2.png 
    Swipe To This Element MNU         ${mnuSetting}        Percent=80 
    Element Text Should Be            ${mnuWeTV}                     ${WeTV}
    Element Text Should Be            ${mnuVIU}                      ${VIU}
    Element Text Should Be            ${mnuAISKARAOKE}             ${AISKARAOKE}
    Element Text Should Be            ${mnuPARTNER}                ${PARTNER} 
    Element Text Should Be            ${mnuBROWSER}                ${BROWSER}
    Element Text Should Be            ${mnuINBOX}                  ${INBOX}
    Element Text Should Be            ${mnuSetting}                ${SETTINGS}
    Capture Page Screenshot          Verify Home Page3.png 
