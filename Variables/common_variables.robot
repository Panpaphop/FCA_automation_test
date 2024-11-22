*** Variables ***
${appiumServer}            http://localhost:4723
${platformName}            Android
${platformVersion}         13
${deviceName}              pixel_6_pro
${appPath}                 /Users/ryu/Downloads/fca-0.0.61+71-qa.apk
${getStartBtn}             accessibility_id=Get started
${appPackage}              com.fourgle.community.qa
${appActivity}             com.example.fourgle_community_app.MainActivity
${wellcome}                accessibility_id=Welcome
${signInNow}               accessibility_id=Sign in now
${continueAsGuest}         accessibility_id=Continue as guest
${doNotShowAgainModal}     accessibility_id=Do not show again.
${closeBanner}             xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.widget.ImageView
${emailInput}              xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[1]
${passwordInput}           xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[2]
${signInBtn}               xpath=(//android.view.View[@content-desc="Sign in"])[2]
${wellcomeToFourglePage}   accessibility_id=Welcome to Fourgle Communities
${contentSection}          xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View