When /^I call "([^"]*)" with arguments "([^"]*)"$/ do |command,args|
  bin = File.join(File.dirname(__FILE__),'..','..','bin',command)
  When "I run `#{bin} #{args}`"
end

Then /^the stdout yaml should contain exactly:$/ do |string|
  YAML.load(string).should == YAML.load(all_stdout)
end

Given /^I have installed the gem "([^"]*)"$/ do |gem|
  gem_dir = File.join(File.dirname(__FILE__),'..','scaffolder-fake')
  gemspec = File.join(gem_dir,'scaffolder-fake.gemspec')

  `gem build #{gemspec}`
  `gem install scaffolder-fake-0.0.0.gem`
end
