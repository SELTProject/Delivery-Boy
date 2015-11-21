Feature: As a user
    So that i can sign up for application
    I want to have a sign up page
Scenario: Signup as customer
  Given I am on the signup page
  When I have entered the first name "xyz", last name "aaa", Email "xyz@aaa.com", User type "customer", Passsword "123456789", and Password confirmation "123456789"
  And I have clicked on the signup button
  Then I should see confirmation link message

Scenario: Confirmation link
  Given I am on the signup page
  When I have entered the first name "xyz", last name "aaa", Email "xyz@aaa.com", User type "customer", Passsword "123456789", and Password confirmation "123456789"
  And I have clicked on the signup button
  And "xyz@aaa.com" opens the email with subject "Confirmation instructions"
  And they click the first link in the email
  Then I should see Your account was successfully confirmed.
  