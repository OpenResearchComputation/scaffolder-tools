Feature: Command line help for scaffolder
  In order to understand how the scaffolder tools work
  A user can use scaffolder help at the command line
  to review its documentation

  Scenario: Running scaffolder with the version argument
    When I call "scaffolder" with arguments "--version"
    Then the exit status should be 0
    And the output should match:
    """
    scaffolder tool version \d.\d.\d

    """

  Scenario: Running scaffolder without any arguments
    When I call "scaffolder" with arguments ""
    Then the exit status should be 0
    And the stdout should contain:
    """
    usage: scaffolder [--version] COMMAND

    Available commands:
    """

  Scenario: Running scaffolder with just the help argument
    When I call "scaffolder" with arguments "help"
    Then the exit status should be 0
    And the stdout should contain:
    """
    usage: scaffolder [--version] COMMAND

    Available commands:
    """
