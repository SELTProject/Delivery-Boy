Given /^I am on openorders$/ do
  visit  display_displayorder_path
end


Given /^I am on allorders$/ do
  visit  userorders_path
end


Given /^I am on cancelledorder page$/ do
    visit  usercancelledorders_path
end

Given /^I am on acceptedorder page$/ do
    visit  useracceptedorders_path
end

Given /^I am on deliveredorder page$/ do
    visit  userdeliveredorders_path
end

Then /^I must see Current openorders$/ do
    expect(page).to have_content("Current Open Orders")
    
    
end

Then /^I must see allorders$/ do
    expect(page).to have_content("All Orders")
    
    
end
Then /^I should see my order$/ do
    expect(page).to have_content("Open Orders")
end

Then /^I should cancelled order$/ do
    expect(page).to have_content("Cancelled")
end

Then /^I should accepted order$/ do
    expect(page).to have_content("Current Accepted")
end

Then /^I should see Delivered order$/ do
    expect(page).to have_content("All Closed Orders")
end