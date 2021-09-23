*** Variables ***
${mnuHomePage}                xpath=//*[@class="android.widget.TextView" and @text="หน้าแรก" or @text="HOME"]
${mnuSetting}                xpath=//*[@class="android.widget.TextView" and @text="ตั้งค่า" or @text="SETTINGS"]
${mnuPreferences}           xpath=//*[@resource-id="com.ais.playbox.prod:id/tv_settings_name" and @text="Preferences" or @text="การตั้งค่า"]
${mnuUILanguage}            xpath=//*[@resource-id="android:id/title" and @text="UI Language" or @text="ภาษาที่ใช้งาน"]
${rdoLanguageEnglish}        xpath=(//*[@resource-id="com.ais.playbox.prod:id/button"]/following::android.widget.TextView[@text="English"]) 
${rdoLanguageThai}        xpath=(//*[@resource-id="com.ais.playbox.prod:id/button"]/following::android.widget.TextView[@text="ไทย"]) 