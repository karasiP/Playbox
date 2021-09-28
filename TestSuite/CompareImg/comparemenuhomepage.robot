***Settings***
Resource        ../../Resource/PageKeyword/commonKeyword.robot
Resource        ../../Resource/PageKeyword/compareImgKeyword.robot
Resource        ../../Resource/PageKeyword/compareimghomeKeyword.robot

***Test Cases***
compare image Listviewhomepage      #run >> robot -v images_dir:ReferencelistviewhomepageTH -v ar_OS:Android -v ar_LANG:TH comparemenuhomepage.robot
    Open app AIS play
    Choose Language
    Capture Listviewhomepage and Compare images
    [Teardown]          Run Keyword And Ignore Error        Close Application