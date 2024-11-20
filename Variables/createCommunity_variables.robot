*** Variables ***
${notiIcon}    accessibility_id=9

${myNotiTab}    accessibility_id=My Notifications Tab 1 of 2
${notiHeader}    accessibility_id=Notifications

${discussionBtn}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.ImageView[3]
${privateDiscussionHeader}    accessibility_id=Private Discussion

${homeTap}    accessibility_id=Home Tab 1 of 4
${searchTab}    accessibility_id=Search Tab 2 of 4
${communityTab}     accessibility_id=Community\nTab 3 of 4
${communityTabXpath}    xpath=//android.widget.ImageView[@content-desc="Community Tab 3 of 4"]
${profileTab}    accessibility_id=Profile Tab 4 of 4
${addCommunityBtn}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View[1]/android.widget.ImageView
${communityInfo}    accessibility_id=Community Information
${communityNameInput}    xpath=//android.widget.ScrollView/android.widget.EditText[1]
${communityDesInput}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText[2]
${addCatBtn}    accessibility_id=Add
${selectCommuTitle}    accessibility_id=Select Community Category Maximum 10 categories
${foodBtn}    accessibility_id=Food
${removeCatBtn}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.widget.ImageView[2]
${createCommuBtn}    accessibility_id=Create
${doneBtn}    accessibility_id=Done