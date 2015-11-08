
Given /^I am on HomePage$/ do
  visit home_path
end

Given /^I am on Login Page$/ do
  visit user_session_path
end

When /^I have entered the email "(.*?)" and the password "(.*?)"$/ do |email, password|
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
end

When /^I press Login button$/ do
  click_button "login_btn"
end

Then /^I should see logged in and redirected to home$/ do
  expect(page).to have_content("Logged in as xyz@aaa.com.")
end

Then /^I got to login page$/ do
  expect(page).to have_content("Login")
end

When /^I press logout$/ do
  click_on "Logout"
end
Then /^I should see signedout message$/ do
  expect(page).to have_content("Signed out successfully.")
end

Then /^I should see a login error message$/ do
  expect(page).to have_content("Invalid email or password")
end

When /^I press of Sign up$/ do
  click_on 'Sign up'
end 

Then /^I should see signup page$/ do
  visit  new_user_registration_path
end

Given /^I am on the signup page$/ do
  visit  new_user_registration_path
end

When /^I have entered the first name "(.*?)", last name "(.*?)", Email "(.*?)", User type "(.*?)", Passsword "(.*?)"$/ do |firstname, lastname, email, usertype, password|
  fill_in 'user_first_name', :with => firstname
  fill_in 'user_last_name', :with => lastname
  fill_in 'user_email', :with => email
  select usertype, from: "user_rid"
  fill_in 'user_password', :with => password
  fill_in 'user_password_confirmation', :with => password
end

When /^I have clicked on the signup button$/ do
  click_button 'Sign up'
end

Then /^I should see logged$/ do
  expect(page).to have_content("Logged in as xyz@aaa.com.")
end

When /^I click on Edit profile$/ do
  click_on "Edit profile"
end
When /^I changed the password to "(.*?)"$/ do |newpass|
  fill_in 'user_password', :with => newpass
  fill_in 'user_password_confirmation', :with => newpass
  fill_in 'user_current_password', :with => "123456789"
end 
When /^press Update$/ do
  click_button "Update"
end
Then /^I must have updated password$/ do
   expect(page).to have_content("Logged in as xyz@aaa.com.")

end
When /^I write wrong current password "(.*?)"$/ do |currpass|
  fill_in 'user_current_password', :with => currpass
end
Then /^I should see invalid password error message$/ do
  expect(page).to have_content("Current password is invalid")
end
