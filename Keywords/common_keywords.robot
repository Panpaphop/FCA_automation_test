*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/common_variables.robot

*** Keywords ***
Open application FCA
    Open Application    remote_url=${appiumServer}   platformName=${platformName}    appium:platformVersion=${platformVersion}    appium:deviceName=${deviceName}    appium:app=${appPath}    appium:appActivity=${appActivity}    appium:appPackage=${appPackage}    appium:noReset=false    appium:automationName=UiAutomator2   autoGrantPermissions=true

Tap get start button
    Wait Until Element Is Visible    ${getStartBtn}
    Click Element    ${getStartBtn}

Should show wellcome page
    Wait Until Element Is Visible    ${wellcome}
    Element Should Be Visible    ${wellcome}

Tap Sign in now
    Wait Until Element Is Visible    ${signInNow}
    Click Element    ${signInNow}
    
Should show Sign in page
    Wait Until Element Is Visible    ${signInBtn}
    Element Should Be Visible    ${signInBtn}

Fill in email field with "${email}"
    Wait Until Element Is Visible    ${emailInput}
    Click Element    ${emailInput}
    Sleep    2s
    Input Text Into Current Element    ${email}

Fill in password field with "${password}"
    Wait Until Element Is Visible    ${passwordInput}
    Input Text    ${passwordInput}    ${password}
    Click Element    ${passwordInput}
    Input Text Into Current Element    ${password}

Tap Sign in button
    Click Element    ${signInBtn}

Should show Wellcome to Fourgle Communities page
    Wait Until Element Is Visible    ${wellcomeToFourglePage}
    Element Should Be Visible    ${wellcomeToFourglePage}

Should Show Get started button
    Wait Until Element Is Visible    ${getStartBtn}
    Element Should Be Visible    ${getStartBtn}

Tap Continue as guest
    Wait Until Element Is Visible    ${continueAsGuest}
    Click Element    ${continueAsGuest}
    Element Should Be Visible    ${doNotShowAgainModal}

Should show ad banner
    Sleep    10s
    Wait Until Element Is Visible    ${doNotShowAgainModal}
    Element Should Be Visible    ${doNotShowAgainModal}

Tap Close banner
    Wait Until Element Is Visible    ${closeBanner}
    Click Element    ${closeBanner}

Should show main page
    Wait Until Element Is Visible    ${contentSection}
    Element Should Be Visible        ${contentSection}