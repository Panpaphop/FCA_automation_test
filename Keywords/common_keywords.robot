*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/common_variables.robot

*** Keywords ***
Open application FCA
    Open Application    remote_url=${appiumServer}   platformName=${platformName}    appium:platformVersion=${platformVersion}    appium:deviceName=${deviceName}    appium:app=${appPath}    appium:appActivity=${appActivity}    appium:appPackage=${appPackage}    appium:noReset=false    appium:automationName=UiAutomator2   

Tap get start button
    Wait Until Element Is Visible    ${getStartBtn}
    Click Element    ${getStartBtn}

Should show wellcome page
    Sleep    10s
    Element Should Be Visible    ${wellcome}
    Wait Until Element Is Visible    ${wellcome}

Tap Sign in now
    Wait Until Element Is Visible    ${signInNow}
    Click Element    ${signInNow}
    
Should show Sign in page
    Sleep    3s
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
    Sleep    10s
    Element Should Be Visible    ${wellcomeToFourglePage}

Should Show Get started button
    Sleep    5s
    Element Should Be Visible    ${getStartBtn}

Tap Continue as guest
    Wait Until Element Is Visible    ${continueAsGuest}
    Click Element    ${continueAsGuest}
    Sleep    3s
    Element Should Be Visible    ${doNotShowAgainModal}

Should show ad banner
    Sleep    15s
    Element Should Be Visible    ${doNotShowAgainModal}

Tap Close banner
    Wait Until Element Is Visible    ${closeBanner}
    Click Element    ${closeBanner}

Should show main page
    Sleep    10s
    Element Should Be Visible        ${contentSection}