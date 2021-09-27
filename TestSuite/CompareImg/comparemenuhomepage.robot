***Settings***
Resource        ../../Resource/PageKeyword/commonKeyword.robot
Resource        ../../Resource/PageKeyword/compareImgKeyword.robot

***Test Cases***
compare image Listviewhomepage      #run >> robot -v images_dir:ReferencelistviewhomepageTH/EN comparemenuhomepage.robot
    Open app AIS play
    Capture Listviewhomepage and Compare image 2 image