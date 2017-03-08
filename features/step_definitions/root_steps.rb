# features/step_definitions/root_steps.rb
Given(/^I am on homepage$/) do
  visit('/')
end

When(/^I click contact us$/) do
  click_link('btn-contact')
end

Then(/^I should see a contact page$/) do
  page.has_content?("The page you were looking for doesn't exist.")
end


