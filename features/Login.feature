Feature: As a customer
    So that i can access the application
    I want to have a login page
    
Background: users have been added to the database
  
  Given I am on the signup page
  When I have entered the first name "xyz", last name "aaa", Email "xyz@aaa.com", User type "customer", Passsword "123456789"
  And I have clicked on the signup button
  And I press logout

Scenario: Correct Password
  
  Given I am on Login Page
  When I have entered the email "xyz@aaa.com" and the password "123456789"
  And I press Login button
  Then I should see logged in and redirected to home
  
Scenario: Wrong Password
  Given I am on Login Page
  When I have entered the email "" and the password ""
  And I press Login button
  Then I should see a login error message
Scenario: Signup from login page
  Given I am on Login Page
  When I press of Sign up
  Then I should see signup page


  
