Feature: As a customer
So that i can update my profile information
I want to have a edit my profile feature
 Background: Signing in via confirmation
    Given I am on the signup page
    And  I have entered the first name "Rishabh", last name "Singh", Email "rishabh.zhcet@gmail.com", User type "customer", Passsword "123456789"
    And I have clicked on the signup button
    And "rishabh.zhcet@gmail.com" opens the email with subject "Confirmation instructions"
    And they click the first link in the email
    Then I should see Your account was successfully confirmed.
    And I am on Login Page
    And I have entered the email "rishabh.zhcet@gmail.com" and the password "123456789"
    And I press Login button

Scenario: Update Password
  When I click on Edit profile
  And I changed the password to "12345678"
  And press Update
  Then I must have updated password
  
Scenario: Wrong Current Password
  When I click on Edit profile
  And I write wrong current password "!"
  And press Update
  Then I should see invalid password error message
  