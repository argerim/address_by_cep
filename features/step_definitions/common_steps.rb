When(/^I run "([^\"]*)"$/) do |command|
  system("cd #{@current_directory} && #{command}").should be_true
end

Then(/^I should see file "([^\"]*)"$/) do |path|
  File.should exist(File.join(@current_directory, path))
end

Then(/^I should see the following files$/) do |table|
  table.raw.flatten.each do |path|
    File.should exist(File.join(@current_directory, path))
  end
end

Then(/^I should successfully run "([^\"]*)"$/) do |command|
  system("cd #{@current_directory} && #{command}").should be_true
end

Then(/^I should see "([^\"]*)" when running "([^\"]*)"$/) do |expected_response, command|
  `cd #{@current_directory} && #{command}`.should include(expected_response)
end