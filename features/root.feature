# features/root.feature
Feature: Homepage Testing

  Scenario: Access Contact
    Given I am on homepage
    When I click contact us
    Then I should see a contact page


