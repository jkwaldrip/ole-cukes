## Step Definitions

The following code supports the steps listed in [bib_editor.feature](/features/bib_editor.feature).

Open the Marc editor to a new bibliographic record:

    Given /^I open a new bib record$/ do
      @bib_editor = OLE_QA::Framework::OLELS::Bib_Editor.new(@ole)
      @bib_editor.open
    end

Add a title (245 $a) to the new record:

    When /^I add a title "(.*?)"$/ do |title|
      @bib_editor.data_line.tag_field.when_present.set('245')
      @bib_editor.data_line.data_field.when_present.set("|a#{title}")
    end

Add a new data line and enter an author (100 $a) on the record:

    And /^I add an author "(.*?)"$/ do |author|
      # We'll need to add an extra line to the bib editor first.
      @bib_editor.data_line.add_button.click
      @bib_editor.data_line.line_number += 1
      @bib_editor.data_line.tag_field.wait_until_present
      # Now we can add our author.
      @bib_editor.data_line.tag_field.set('100')
      @bib_editor.data_line.data_field.when_present.set("|a#{author}")
    end

Submit the record and check for a success message:

    Then /^I can save the record$/ do
      save_msg = @bib_editor.save_record
      raise('Save not successful!') unless save_msg =~ /success/
    end
