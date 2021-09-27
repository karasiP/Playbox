***Settings***
Library         AppiumLibrary
Library         RobotEyes

***Keywords***
Capture Full Screen
    Sleep   3s
    Open Eyes    AppiumLibrary        5
    Sleep   3s
    Capture Element         id=com.ais.playbox.prod:id/browse_headers       tolerance=10       name=taphomepage1          
    Compare Images