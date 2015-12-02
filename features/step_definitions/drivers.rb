Then /^I should see driver details and redirected to driverdetails page$/ do
     expect(page).to have_content("driverdetails")
end

When /^I enter vehicle number "(.*?)" and  License "(.*?)"$/ do |vin,lin|
  fill_in "driverdetail_vehicle_no", :with => vin
  fill_in "driverdetail_license_id", :with => lin
end
When /^I press Submit$/ do
    click_button "Submit"
end

Then (/^I should see "(.*?)"$/) do |confirm|
    expect(page).to have_content("Your details were successfully created.")
end

