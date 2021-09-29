***Settings***
Resource        ../../Resource/PageKeyword/commonKeyword.robot
Resource        ../../Resource/PageRepository/Android/commonRepository.robot
Resource        ../../Resource/PageKeyword/compareimgbannerKeyword.robot



***Test Cases***
compare image Banner Partner            #run >> robot -v images_dir:ReferenceBannerPartner -v ar_OS:Android comparebannerpartner.robot
    Open app AIS play
    Wait Until Element Is Visible       ${mnuHomePage}      30s
    Click Element       ${mnuHomePage}
    Capture Banner Partner and Compare images
    [Teardown]          Run Keyword And Ignore Error        Close Application