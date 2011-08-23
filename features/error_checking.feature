Feature: Error checking command line arguments
  In order to recoginise incorrect input
  A user should be able to use the binaries with incorrect inputs
  and be given clear error messages

  Scenario: Using scaffolder for an unknown command
    When I call "scaffolder" with arguments "missing"
    Then the exit status should be 1
    And the stderr should contain exactly:
    """
    Error. Unknown command: "missing".

    """

  Scenario: Fetching the man page for an unknown command
    When I call "scaffolder" with arguments "help missing"
    Then the exit status should be 1
    And the stderr should contain exactly:
    """
    Error. Unknown command: "missing".

    """
