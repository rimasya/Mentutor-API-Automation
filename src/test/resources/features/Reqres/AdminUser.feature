Feature: Mentutor Feature Test

  @Tugas
  Scenario: Get all users valid
    Given Get all users
    When Send get all section request
    Then Status code should be 200 OK

    @Tugas
    Scenario: Get Profile