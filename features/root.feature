# features/root.feature
Feature: Homepage

  Scenario: Access website
    Given I am on homepage
    When I click contact us
    Then I should see a contact page
