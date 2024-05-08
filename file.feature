Feature: Verify Link Functionality

  Scenario: Clicking on a link
    Given I navigate to the website
    When I click on the link with XPath
    Then I should be redirected to the expected page

