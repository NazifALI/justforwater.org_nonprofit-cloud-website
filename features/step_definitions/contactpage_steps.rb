# features/step_definitions/contactpage_steps.rb
Given(/^I am on the contactpage$/) do
  visit('/contact')
end

When(/^I click home$/) do
  click_link('header-logo')
end

Then(/^I should see the home page$/) do
   page.has_content?('Shi') # Write code here that turns the phrase above into concrete actions
end
