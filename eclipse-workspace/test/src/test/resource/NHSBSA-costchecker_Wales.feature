Feature: Validate if person can get help for NHS cost

  Background: 
    Given user launces broser in chrome browser
    And user launches application "https://services.nhsbsa.nhs.uk/check-for-help-paying-nhs-costs/start"
    And user scroll "down" the page
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page

  @Test_Id_NHSBSAcostchecker_Wales_01
  Scenario: Verify cost details covered for user living in Wales, not live in border of Scotland or Wales and has dental practice in Wales
    And user clicks on element for locator "id" and value "radio-wales" 
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #Live in border of Scotland or wales - no
    And user clicks on element for locator "id" and value "radio-no"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #dental practice
    And user clicks on element for locator "id" and value "radio-wales"
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    And user waits for 3 seconds
    #DOB details
    And user enters "21" in textbox with attribute "id" and value "dob-day"
    And user enters "10" in textbox with attribute "id" and value "dob-month"
    And user enters "1985" in textbox with attribute "id" and value "dob-year"
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
    #Diabetes details - Yes
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
    And user verify message on screen "NHS prescriptions" available in "id" and value "prescription-tick"