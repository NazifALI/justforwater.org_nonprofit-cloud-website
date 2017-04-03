# features/root.feature
Feature: Subscribe

  Scenario: subscribe button
    Given I am on sponsors
    When I click contact us
    Then I should see a contact page
