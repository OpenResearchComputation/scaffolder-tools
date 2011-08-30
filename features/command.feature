Feature: Using an installed scaffolder command
  In order to use installed scaffolder commands
  A user can install a scaffolder command
  to use its fuctionality at the at the command-line

  Background: I have installed gem "scaffolder-fake"

  Scenario: Running scaffolder without any arguments with an installed command
    When I call "scaffolder" with arguments ""
    Then the exit status should be 0
    And the stdout should contain:
    """
    usage: scaffolder [--version] COMMAND

    Available commands:
    fake        A fake scaffolder command
    """
