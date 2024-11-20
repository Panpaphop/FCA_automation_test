*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/common_variables.robot
Resource    ../Variables/createCommunity_variables.robot

*** Keywords ***
Tap notification icon
    Wait Until Element Is Visible    ${notiIcon}
    Click Element    ${notiIcon}

Should show notifications page
    Sleep    10s
    Element Should Be Visible    ${notiHeader}

Tap on Community tab
    Sleep    10s
    Wait Until Element Is Visible    ${communityTab} 
    Click Element    ${communityTab}

Should Show Communities page
    Element Should Be Visible    ${addCommunityBtn}

Tap Add Community button
    Wait Until Element Is Visible    ${addCommunityBtn}
    Click Element    ${addCommunityBtn}

Should show Create Community page
    Sleep    10s
    Element Should Be Visible    ${communityNameInput}

Fill in Community name field with "${commuName}"
    Wait Until Element Is Visible    ${communityNameInput}
    Click Element    ${communityNameInput}
    Input Text Into Current Element      ${commuName}

Fill in community description with "${commuDesc}"
    Wait Until Element Is Visible    ${communityDesInput}
    Input Text    ${communityDesInput}    ${commuDesc}
    Click Element    ${communityDesInput}
    Input Text Into Current Element    ${commuDesc}

Tap + Add Category button
    Wait Until Element Is Visible    ${addCatBtn}
    Click Element    ${addCatBtn}

Should show Select Community Category page
    Sleep    10s
    Element Should Be Visible    ${foodBtn}

Select Food category
    Wait Until Element Is Visible    ${foodBtn}
    Click Element    ${foodBtn}

Food Category has to be selected
    Sleep    10s
    Element Should Be Visible    ${removeCatBtn}

Tap Done button after select category
    Sleep    10s
    Wait Until Element Is Visible    ${doneBtn}
    Click Element    ${doneBtn}

Tap Create button
    Wait Until Element Is Visible    ${createCommuBtn}
    Click Element    ${createCommuBtn}







    
    
