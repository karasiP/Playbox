***Settings***
Resource        ../../Resource/PageKeyword/commonKeyword.robot
Resource        ../../Resource/PageKeyword/compareImgKeyword.robot


***Test Cases***
compare image menulist      #run >>robot -v images_dir:ReferenceimageEN/TH compareImg.robot
    Open app AIS play
    Capture Images and Compare Element  