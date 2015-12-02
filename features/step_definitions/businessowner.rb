Then /^I should see business details and redirected to businessdetail page$/ do
     expect(page).to have_content("Business Details")
end

When /^I enter businessname "(.*?)", Address line 1 "(.*?)", Address line 2 "(.*?)", Zip code "(.*?)", City "(.*?)", State "(.*?)" and Country "(.*?)"$/ do |bname,add1,add2,zip,city,state,country|
  fill_in "businessdetail_business_name", :with => bname
  fill_in "businessdetail_address_line_1", :with => add1
  fill_in "businessdetail_address_line_2", :with => add2
  fill_in "businessdetail_zip_code", :with => zip
  fill_in "businessdetail_city", :with => city
  fill_in "businessdetail_state", :with => state
  fill_in "businessdetail_country", :with => country
end
When /^I press Submit button$/ do
    click_button "Submit"
end

Then (/^I should see Your details were successfully created$/) do 
    expect(page).to have_content("Your details were successfully created.")
end
