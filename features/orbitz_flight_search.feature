Feature: Orbitz Flight Functionality


  Scenario Outline: verify user is warned when searching for past flights
    Given user is on orbitz homepage
    When user selects flight tab
    And user selects Columbus airport as departure location
    And user selects Cleveland airport as arrival location
    And user selects past date
    And user search for the available flights
    Then user should see the warning messages
    Examples:
        | Please complete the highlighted origin field below.     |
        | Please complete the highlighted destination field below.|
        | The start or end date is prior to the current date.     |




  Scenario Outline: verify the user gets the available flights for the future date
    When user selects flight tab
    And user selects "Columbus" airport as departure location
    And user selects "Cleveland" airport as arrival location
    And user selects future date
    And user search for the available flights
    Then user should see the available flights
    Examples: