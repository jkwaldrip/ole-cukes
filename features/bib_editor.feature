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
