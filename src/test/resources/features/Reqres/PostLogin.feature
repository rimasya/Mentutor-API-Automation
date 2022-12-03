Feature: Post Login

  @positive
  Scenario Outline: Login user with valid data
    Given User login with email "<email>" and password "<passowrd>"
    When User send request post login user
    Then Should return 200 OK
    And Response body massage is "login successful"
    Examples:
      |email                    |passowrd   |
      |admin.mentutor@gmail.com |Admin123$  |
#  @login
#  Scenario: Post login with valid value
#    Given Post login with all valid value as admin
#    When Send request post login
#    Then Should return 200 OK
#    And Validate post login valid value json schema
#
#  Scenario: Post login with valid value
#    Given Post login with all valid value as mentor
#    When Send request post login
#    Then Should return 200 OK
#    And Validate post login valid value json schema
#
#  Scenario: Post login with valid value
#    Given Post login with all valid value as mentee
#    When Send request post login
#    Then Should return 200 OK
#    And Validate post login valid value json schema
