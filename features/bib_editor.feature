Feature: Bib Editor
  
  Scenario: Create a Minimal Bibliographic Record
    Given I open a new bib record
    When I add a title (245 $a)
    Then I can save the record
