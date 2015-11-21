Feature: As a customer
    So that i can access the application
    I want to have a login page
    
#Background: users have been added to the database
  
# Given I am on the signup page
 # When I have entered the first name "Rishabh", last name "Singh", Email "rishabh.zhcet@gmail.com", User type "customer", Passsword "123456789"
#  And I have clicked on the signup button
  Background: Signing in via confirmation
    Given I am on the signup page
    And  I have entered the first name "abc", last name "Singh", Email "abc.abc@gmail.com", User type "customer", Passsword "123456789"
    And I have clicked on the signup button
    And "abc.abc@gmail.com" opens the email with subject "Confirmation instructions"
    And they click the first link in the email
    Then I should see Your account was successfully confirmed.
   
  

Scenario: Correct Password
  
  Given I am on Login Page
  When I have entered the email "abc.abc@gmail.com" and the password "123456789"
  And I press Login button
  Then I should see logged in and redirected to editprofile
  
Scenario: Wrong Password
  Given I am on Login Page
  When I have entered the email "" and the password ""
  And I press Login button
  Then I should see a login error message
Scenario: Signup from login page
  Given I am on Login Page
  When I press of Sign up
  Then I should see signup page


  
