#  Copyright 2005-2013 The Kuali Foundation
#
#  Licensed under the Educational Community License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at:
#
#    http://www.opensource.org/licenses/ecl2.php
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

Given /^I open a new bib record$/ do
  @bib_editor = OLE_QA::Framework::OLELS::Bib_Editor.new(@ole)
  @bib_editor.open
end

When /^I add a title "(.*?)"$/ do |input|
  @bib_editor.data_line.tag_field.when_present.set('245')
  @bib_editor.data_line.data_field.when_present.set("|a#{input}")
end

Then /^I can save the record$/ do
  save_msg = @bib_editor.save_record
  raise('Save not successful!') unless save_msg =~ /success/
end
