Feature: Validate if person can get help for NHS cost

  Background: 
    Given user launces broser in chrome browser
    And user launches application "https://services.nhsbsa.nhs.uk/check-for-help-paying-nhs-costs/start"
    And user scroll "down" the page
    And user clicks on element for locator "id" and value "next-button"
    And user scroll "down" the page
    
  @Test_Id_NHSBSAcostchecker_NortherIreland_01
  Scenario: Verify cost details covered for user living in Norther Ireland
    And user clicks on element for locator "id" and value "radio-nire" 
    And user clicks on element for locator "id" and value "next-button"
    And user verify message on screen "You cannot use this service because you live in Northern Ireland" available in "id" and value "result-heading"
    