Feature: Customer Logout
    As a customer user
    So that I can logout of the website
    I want to have a logout feature
Background: users have been added to the database
  
 Background: Signing in via confirmation
    Given I am on the signup page
    And  I have entered the first name "abc", last name "abc", Email "abc.abc@abc.com", User type "customer", Passsword "123456789"
    And I have clicked on the signup button
    And "abc.abc@abc.com" opens the email with subject "Confirmation instructions"
    And they click the first link in the email
    Then I should see Your account was successfully confirmed.
    And I am on Login Page
    And I have entered the email "abc.abc@abc.com" and the password "123456789"
    And I press Login button
    

    
Scenario: Logout 
  
  When I press logout
  Then I should see signedout message