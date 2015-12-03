Feature: As a customer
So that i can hire a driver to deliver items
I want to fill a delivery information form
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

Scenario: Incorrect form filled
  Given I am on CustomerHire Page
  When I have to enter the number of items "1", Restaurant address "ABCD", Restaurant pin "52246"
  And I press Submit
  Then I should see Please fill out this field
  
Scenario: Correct form filled
  Given I am on CustomerHire
  When I have entered the number of items "1", Restaurant name "Pancheros", Restaurant address "ABCD", Restaurant pin "52246"
  And I press Submit
  Then I should see Delivery Boy will contact you shortly
  
