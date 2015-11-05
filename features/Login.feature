Feature: Customer Login
    As a customer
    So that i can access the application
    I want to have  a login page
  Scenario: Login
    
  Given a valid user
  When I am at home page
  And I fill in the following:
    |Email|bala92@gmail.com|
    |Password|123456789|
  And I press "Login"
  Then I should see "Signed in successfully."
  