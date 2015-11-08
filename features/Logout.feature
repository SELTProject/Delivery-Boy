Feature: Customer Logout
    As a customer user
    So that I can logout of the website
    I want to have a logout feature
Background: users have been added to the database
  
  Given I am on the signup page
  When I have entered the first name "xyz", last name "aaa", Email "xyz@aaa.com", User type "customer", Passsword "123456789", and Password confirmation "123456789"
  And I have clicked on the signup button
    

    
Scenario: Logout 
  
  When I press logout
  Then I should see signedout message