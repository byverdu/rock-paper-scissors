Given(/^I am on the homepage$/) do
	visit '/'
end

When(/^I click "(.*?)"$/) do |arg1|
  click_link arg1
end

When(/^I enter my name$/) do
  fill_in "name", with: "Stephen"
end

When(/^I press "(.*?)"$/) do |arg1|
  find('button').click
end

Then(/^I should be ready to play$/) do
  expect(page).to have_content("Welcome")
end

Given(/^I've registered to play$/) do
  visit '/new-game'
  click_button "Play!"
end

When(/^I choose Paper$/) do
  click_button('Paper')
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content("RESULTS")
end
