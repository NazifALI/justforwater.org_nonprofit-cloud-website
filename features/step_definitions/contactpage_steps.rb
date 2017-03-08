# features/step_definitions/contactpage_steps.rb
Given(/^I am on contactpage$/) do
  visit('/contact')
end

When(/^I click home$/) do
  click_link('btn-home')
end

Then(/^I should see a home page$/) do
  page.has_content?("The page you were looking for doesn't exist.")
end
