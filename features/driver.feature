Feature: As a driver
So that I can update my vehicle information
I want to have a way to edit vehicle details
 Background: Signing in via confirmation
    Given I am on the signup page
    And  I have entered the first name "abc", last name "abc", Email "abc.abc@gmail.com", User type "driver", Passsword "123456789"
    And I have clicked on the signup button
    And "abc.abc@gmail.com" opens the email with subject "Confirmation instructions"
    And they click the first link in the email
   
   
Scenario: Driver Details
  
  Given I am on Login Page
  When I have entered the email "abc.abc@gmail.com" and the password "123456789"
  And I press Login button
  Then I should see driver details and redirected to driverdetails page
  
Scenario: Enter Details
  Given I am on Login Page
  When I have entered the email "abc.abc@gmail.com" and the password "123456789"
  And I press Login button
  And I enter vehicle number "13467492937" and  License "ADDA1367826"
  And I press Submit
  Then I should see "Your details were successfully created."
 