*** Settings ***
Library    AppiumLibrary
Resource    ../Keywords/common_keywords.robot
Resource    ../Keywords/createCommunity_keywords.robot

Suite Setup   Run Keywords
...            Open application FCA
...    AND    Tap get start button
...    AND    Should show wellcome page
...    AND    Tap Sign in now
...    AND    Should show Sign in page
...    AND    Fill in email field with "email"  #Email here
...    AND    Fill in password field with "password"     #Password here
...    AND    Tap Sign in button
...    AND    Should show Wellcome to Fourgle Communities page
...    AND    Tap get start button
...    AND    Should show ad banner
...    AND    Tap Close banner
...    AND    Should show main page

*** Test Cases ***
Create Community
    Tap on Community tab
    Should Show Communities page
    Tap Add Community button
    Should show Create Community page
    Fill in Community name field with "Foodie"
    Fill in community description with "Test food"
    Tap + Add Category button
    Should show Select Community Category page
    Select Food category
    Food Category has to be selected
    Tap Done button after select category
    Tap Create button