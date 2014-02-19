## Features

### Testing Steps

In [step_definitions](/features/step_definitions/) you will find the test code which supports the
testing steps in [bib_editor.feature](bib_editor.feature).

### Test Automation Support

Code supporting the test automation can be found in [support](/features/support/).  This includes
code to be run both before and after the test steps are evaluated.

### Bib Editor Feature

In [bib_editor.feature](bib_editor.feature) you will find two Cucumber scenarios containing
testing steps for using the OLE Marc Editor.

    Feature: Bib Editor

      Scenario: Create a Minimal Bibliographic Record
        Given I open a new bib record
        When I add a title "Cucumber"
        Then I can save the record

      Scenario: Create a Bib Record with Title and Author
        Given I open a new bib record
        When I add a title "The Call of Cthulhu"
        And I add an author "H.P. Lovecraft"
        Then I can save the record

"Feature:" indicates that a new feature is being described, and should be followed by a unique title.

    Feature: Bib Editor

"Scenario:"  means that a new testing scenario is starting, and any set-up steps should be repeated for
the new scenario.  The "Scenario:" header should be followed by a unique scenario title.

      Scenario: Create a Minimal Bibliographic Record

"Given" introduces a background condition for the test.

        Given I open a new bib record

"When" and "Then" introduce unique testing steps.  "When" signals a new action to be taken,
and "Then" signals that we're anticipating a result from the preceding step or steps:


        When I add a title "Cucumber"
        Then I can save the record

We can add additional testing steps by prefacing them with an "And":


      Scenario: Create a Bib Record with Title and Author
        Given I open a new bib record
        When I add a title "The Call of Cthulhu"
        And I add an author "H.P. Lovecraft"
        Then I can save the record