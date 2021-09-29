***Settings***
Library         AppiumLibrary
Library         RobotEyes
Resource        ../../Resource/PageRepository/Android/compareimgbannerRepository.robot


***Keywords***
Capture Banner Partner and Compare images
    Sleep   3s
    Open Eyes    AppiumLibrary        5
    Sleep   3s
    Swipe By Percent    15    90    15    50
    Capture Element     ${bannerNETFLIX}            tolerance=1         name=bannerNETFLIX
    Capture Element     ${bannerDisneyHotstar}      tolerance=1         name=bannerDisneyHotstar
    Capture Element     ${bannerWeTV}               tolerance=1         name=bannerWeTV
    Capture Element     ${bannerVIU}                tolerance=1         name=bannerVIU
    Swipe By Percent    60   30   30   30
    Capture Element     ${bannerAISKARAOKE}         tolerance=1         name=bannerAISKARAOKE
    Compare Images