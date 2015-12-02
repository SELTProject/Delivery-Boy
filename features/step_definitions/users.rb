When /^(?:I|they|"([^"]*?)") opens? the email with subject "([^"]*?)"$/ do |address, subject|
  open_email(address, :with_subject => subject)
end
When /^(?:I|they) click the first link in the email$/ do
  click_first_link_in_email
end
Then /^I should see Your account was successfully confirmed.$/ do
  expect(page).to have_content("Your email address has been successfully confirmed.")
end
When(/^I click on "(.*?)"$/) do |arg1|
    click_on arg1
end
Then /^I should see a confirmation page$/ do
  expect(page).to have_content("Resend confirmation instructions")
end
When /^I enter xyz@aaa.com as email id on that page$/ do
  fill_in "user_email", :with => "xyz@aaa.com"
end
When /^I click on Resend confirmation instructions$/ do
  click_button "Resend confirmation instructions"
  #expect(page).to have_content("duhd")
end
Then /^I should see a error message$/ do
  expect(page).to have_content("You will receive an email with instructions for how to confirm your email address in a few minutes.")
end
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

Then /^I should see logged in and redirected to editprofile/ do
  expect(page).to have_content("Signed in successfully.")
 # expect(page).to have_content("Local Delivery System (Alpha)")
  
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
  roles = [{:name => 'customer'},
    	  {:name => 'driver'},
    	  {:name => 'businessowner'}]

  roles.each do |role|
    Role.create!(role)
  end
  fill_in 'user_first_name', :with => firstname
  fill_in 'user_last_name', :with => lastname
  fill_in 'user_email', :with => email
  select usertype, :from => "user_rid"
  #find('user[rid]').find(:xpath, usertype).select_option
  fill_in 'user_password', :with => password
  fill_in 'user_password_confirmation', :with => password
end

When /^I have clicked on the signup button$/ do
  click_button 'Sign up'
end

Then /^I should see confirmation link message$/ do
  expect(page).to have_content("A message with a confirmation link has been sent to your email address. Please follow the link to activate your account.")
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
   expect(page).to have_content("Your account has been updated successfully.")

end
When /^I write wrong current password "(.*?)"$/ do |currpass|
  fill_in 'user_current_password', :with => currpass
end
Then /^I should see invalid password error message$/ do
  expect(page).to have_content("Current password is invalid")
end
