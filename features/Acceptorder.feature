Feature: As a driver
So that i can accept my orders
I want to have a edit my profile feature
 Background: Signing in via confirmation
    Given I am on the signup page
    And  I have entered the first name "abc", last name "abc", Email "abc.abc@gmail.com", User type "customer", Passsword "123456789"
    And I have clicked on the signup button
    And "abc.abc@gmail.com" opens the email with subject "Confirmation instructions"
    And they click the first link in the email
    Then I should see Your account was successfully confirmed.
    And I am on Login Page
    And I have entered the email "abc.abc@gmail.com" and the password "123456789"
    And I press Login button
    And I am on CustomerHire
    And I have entered the number of items "1", Restaurant name "Pancheros", Restaurant address "ABCD", Restaurant pin "52246"
    And I press Submit
    And I press logout
    And I am on the signup page
    And  I have entered the first name "abc", last name "abc", Email "bbc.bbc@gmail.com", User type "driver", Passsword "123456789"
    And I have clicked on the signup button
    And "bbc.bbc@gmail.com" opens the email with subject "Confirmation instructions"
    And they click the first link in the email
    And I am on Login Page
    And I have entered the email "bbc.bbc@gmail.com" and the password "123456789"
    And I press Login button
    
Scenario: Open Orders
  Given I am on openorders
  Then I must see Current openorders
  
Scenario: All Orders
  Given I am on allorders
  Then I must see allorders

Scenario: Cancelled Orders
  Given I am on cancelledorder page
  Then I should cancelled order
  
Scenario: Accepted Orders
  Given I am on acceptedorder page
  Then I should accepted order
  
Scenario: Delivered Orders
  Given I am on deliveredorder page
  Then I should see Delivered order
  
  
  