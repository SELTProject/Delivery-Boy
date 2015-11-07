Feature: As a customer
So that i can update my profile information
I want to have a edit my profile feature
Background: users have been added to the database
  
  Given I am on the signup page
  When I have entered the first name "xyz", last name "aaa", Email "xyz@aaa.com", User type "customer", Passsword "123456789", and Password confirmation "123456789"
  And I have clicked on the signup button
  

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
  