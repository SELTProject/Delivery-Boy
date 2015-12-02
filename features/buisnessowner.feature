Feature: As a business owner
So that i can update my business details
I want to have a edit business feature
    Background: Signing in via confirmation
    Given I am on the signup page
    And  I have entered the first name "abc", last name "abc", Email "abc.abc@gmail.com", User type "businessowner", Passsword "123456789"
    And I have clicked on the signup button
    And "abc.abc@gmail.com" opens the email with subject "Confirmation instructions"
    And they click the first link in the email
    
Scenario: Business Details
  
  Given I am on Login Page
  When I have entered the email "abc.abc@gmail.com" and the password "123456789"
  And I press Login button
  Then I should see business details and redirected to businessdetail page
  
Scenario: Enter Business Details
  Given I am on Login Page
  When I have entered the email "abc.abc@gmail.com" and the password "123456789"
  And I press Login button
  And I enter businessname "ABC Rest", Address line 1 "Add1", Address line 2 "Add2", Zip code "52246", City "IowaCity", State "Iowa" and Country "US"
  And I press Submit button
  Then I should see Your details were successfully created