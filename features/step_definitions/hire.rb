Given /^I am on CustomerHire/ do
  visit  new_customerhire_path
end

When /^I have entered the number of items "(.*?)", Restaurant name "(.*?)", Restaurant address "(.*?)", Restaurant pin "(.*?)"$/ do |item, rname, raddress1, rpin|
 
  fill_in 'customerhire_no_items', :with => item
  fill_in 'customerhire_restaurant_name', :with => rname
  fill_in 'customerhire_restaurant_address1', :with => raddress1
  fill_in 'customerhire_restaurant_pin', :with => rpin
end
When(/^I have to enter the number of items "(.*?)", Restaurant address "(.*?)", Restaurant pin "(.*?)"$/) do |arg1, arg2, arg3|
    fill_in 'customerhire_no_items', :with => arg1
 
end
When /^And I press Submit$/ do
    click_button "Submit"
end
Then /^I should see Delivery Boy will contact you shortly$/ do
     expect(page).to have_content("Delivery Boy will contact you shortly :)")
end
Then /^I should see Please fill out this field$/ do
     expect(page).to have_content("Logout")
end