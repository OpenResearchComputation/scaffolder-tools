When /^I call "([^"]*)" with arguments "([^"]*)"$/ do |command,args|
  bin = File.join(File.dirname(__FILE__),'..','..','bin',command)
  When "I run `#{bin} #{args}`"
end

Then /^the stdout yaml should contain exactly:$/ do |string|
  YAML.load(string).should == YAML.load(all_stdout)
end

Given /^I have installed gem "([^"]*)"$/ do |arg1|
    pending # express the regexp above with the code you wish you had
end
