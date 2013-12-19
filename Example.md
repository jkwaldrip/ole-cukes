Feature: Bib Editor

  Scenario: Create a Minimal Bibliographic Record # features/bib_editor.feature:3
    Given I open a new bib record                 # features/step_definitions/bib_editor_steps.rb:15
    When I add a title "Cucumber"                 # features/step_definitions/bib_editor_steps.rb:20
    Then I can save the record                    # features/step_definitions/bib_editor_steps.rb:35

  Scenario: Create a Bib Record with Title and Author # features/bib_editor.feature:8
    Given I open a new bib record                     # features/step_definitions/bib_editor_steps.rb:15
    When I add a title "The Call of Cthulhu"          # features/step_definitions/bib_editor_steps.rb:20
    And I add an author "H.P. Lovecraft"              # features/step_definitions/bib_editor_steps.rb:25
    Then I can save the record                        # features/step_definitions/bib_editor_steps.rb:35

2 scenarios (2 passed)
7 steps (7 passed)
0m37.657s
