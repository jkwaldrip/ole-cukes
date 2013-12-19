Feature:  Division

  Scenario Outline:  Divide two numbers
    Given the input "<input>"
    When the calculator is run
    Then the output should be "<output>"

    Examples:
      | input | output |
      | 2/2   | 1      |
      | 4/2   | 2      |
      | 98/2  | 49     |
