Feature: Validate if person can get help for NHS cost

  Background: 
    Given user launces broser in chrome browser
    And user launches application "https://services.nhsbsa.nhs.uk/check-for-help-paying-nhs-costs/start"
    And user scroll "down" the page
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page

  @Test_Id_NHSBSAcostchecker_England_01
  Scenario: Verify cost details covered for user living in England, do not live in border of Scotland or Wales and has dental practice in England
    When user clicks on element for locator "id" and value "radio-england"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Live in border of Scotland or wales - no
    And user clicks on element for locator "id" and value "radio-no"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #dental practice
    And user clicks on element for locator "id" and value "radio-england"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #DOB details
    And user enters "24" in textbox with attribute "id" and value "dob-day"
    And user enters "01" in textbox with attribute "id" and value "dob-month"
    And user enters "1995" in textbox with attribute "id" and value "dob-year"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Maritial Status - No
    And user clicks on element for locator "id" and value "radio-no"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Tax benefit claims - No
    And user clicks on element for locator "id" and value "radio-no"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Pregnancy details - No
    And user clicks on element for locator "id" and value "radio-no"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Injury or illness details during service in armed forces - No
    And user clicks on element for locator "id" and value "radio-no"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Diabetes details - No
    And user clicks on element for locator "id" and value "radio-no"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Other health conditions - No
    And user clicks on element for locator "id" and value "radio-no"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Glaucoma details - No
    And user clicks on element for locator "id" and value "radio-no"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Care home details - No
    And user clicks on element for locator "id" and value "radio-no"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Property, Investment or Savings details above 16000£ - No
    And user clicks on element for locator "id" and value "radio-no"
    And user clicks on element for locator "id" and value "next-button"
    Then user verify message on screen "You could get help to pay for your NHS costs" available in "xpath" and value ".//*[@class='form-group-margin']"

  @Test_Id_NHSBSAcostchecker_England_02
  Scenario: Verify cost details covered for user living in England, live in border of Scotland or Wales and has dental practice in England
    When user clicks on element for locator "id" and value "radio-england"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Live in border of Scotland or wales - Yes
    And user clicks on element for locator "id" and value "radio-yes"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #dental practice
    And user clicks on element for locator "id" and value "radio-england"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #DOB details
    And user enters "24" in textbox with attribute "id" and value "dob-day"
    And user enters "01" in textbox with attribute "id" and value "dob-month"
    And user enters "1995" in textbox with attribute "id" and value "dob-year"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Maritial Status - No
    And user clicks on element for locator "id" and value "radio-no"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Tax benefit claims - No
    And user clicks on element for locator "id" and value "radio-no"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Pregnancy details - No
    And user clicks on element for locator "id" and value "radio-no"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Injury or illness details during service in armed forces - No
    And user clicks on element for locator "id" and value "radio-no"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Diabetes details - No
    And user clicks on element for locator "id" and value "radio-no"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Other health conditions - No
    And user clicks on element for locator "id" and value "radio-no"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Glaucoma details - No
    And user clicks on element for locator "id" and value "radio-no"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Care home details - No
    And user clicks on element for locator "id" and value "radio-no"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Property, Investment or Savings details above 16000£ - No
    And user clicks on element for locator "id" and value "radio-no"
    And user clicks on element for locator "id" and value "next-button"
    Then user verify message on screen "NHS prescriptions" available in "id" and value "prescription-tick"

  @Test_Id_NHSBSAcostchecker_England_03
  Scenario: Verify cost details covered for user living in England, do not live in border of Scotland or Wales and has not registered for dental practice
    And user waits for 3 seconds
    When user clicks on element for locator "id" and value "radio-england"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Live in border of Scotland or wales - no
    And user clicks on element for locator "id" and value "radio-no"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #dental practice
    And user clicks on element for locator "id" and value "radio-not-registered"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #DOB details
    And user enters "14" in textbox with attribute "id" and value "dob-day"
    And user enters "11" in textbox with attribute "id" and value "dob-month"
    And user enters "1985" in textbox with attribute "id" and value "dob-year"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Maritial Status - Yes
    And user clicks on element for locator "id" and value "radio-yes"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Tax benefit claims - Yes
    And user clicks on element for locator "id" and value "radio-yes"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Get paid for Universal Credit - No get different benefit
    And user clicks on element for locator "id" and value "different-benefit"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Additional benefit - Tax credit, Income support
    And user clicks on element for locator "id" and value "taxCredit"
    And user clicks on element for locator "id" and value "incSupport"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Then user verify message on screen "You get help with NHS costs" available in "xpath" and value "//*[@class='heading-large']"