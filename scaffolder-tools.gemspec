# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{scaffolder-tools}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Barton"]
  s.date = %q{2011-01-04}
  s.default_executable = %q{scaffolder}
  s.description = %q{Binary to use with scaffolder genome scaffolds}
  s.email = %q{mail@michaelbarton.me.uk}
  s.executables = ["scaffolder"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/scaffolder",
    "features/help.feature",
    "features/sequence.feature",
    "features/step_definitions/scaffolder-tools.rb",
    "features/support/env.rb",
    "features/validate.feature",
    "lib/scaffolder/binary_helper.rb",
    "lib/scaffolder/tool.rb",
    "lib/scaffolder/tool/help.rb",
    "lib/scaffolder/tool/sequence.rb",
    "lib/scaffolder/tool/validate.rb",
    "lib/scaffolder/tool_index.rb",
    "man/scaffolder-help.1.ronn",
    "man/scaffolder-sequence.1.ronn",
    "man/scaffolder-validate.1.ronn",
    "scaffolder-tools.gemspec",
    "spec/scaffolder/binary_helper_spec.rb",
    "spec/scaffolder/tool/help_spec.rb",
    "spec/scaffolder/tool/sequence_spec.rb",
    "spec/scaffolder/tool/validate_spec.rb",
    "spec/scaffolder/tool_index_spec.rb",
    "spec/scaffolder/tool_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/exit_code_matcher.rb"
  ]
  s.homepage = %q{http://www.michaelbarton.me.uk/projects/scaffolder/}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Tools for manipulating genome scaffolds}
  s.test_files = [
    "spec/scaffolder/binary_helper_spec.rb",
    "spec/scaffolder/tool/help_spec.rb",
    "spec/scaffolder/tool/sequence_spec.rb",
    "spec/scaffolder/tool/validate_spec.rb",
    "spec/scaffolder/tool_index_spec.rb",
    "spec/scaffolder/tool_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/exit_code_matcher.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<configliere>, ["~> 0.1"])
      s.add_runtime_dependency(%q<bio>, ["~> 1.4"])
      s.add_runtime_dependency(%q<scaffolder>, ["~> 0.4"])
      s.add_runtime_dependency(%q<ronn>, ["~> 0.7"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5"])
      s.add_development_dependency(%q<gherkin>, ["~> 2.3.3"])
      s.add_development_dependency(%q<rspec>, ["~> 2.4"])
      s.add_development_dependency(%q<cucumber>, ["~> 0.10"])
      s.add_development_dependency(%q<fakefs>, ["~> 0.2"])
      s.add_development_dependency(%q<aruba>, ["~> 0.2"])
      s.add_development_dependency(%q<mocha>, ["~> 0.9"])
      s.add_development_dependency(%q<hashie>, ["~> 0.4"])
      s.add_development_dependency(%q<yard>, ["~> 0.6"])
      s.add_development_dependency(%q<scaffolder-test-helpers>, ["~> 0.1"])
    else
      s.add_dependency(%q<configliere>, ["~> 0.1"])
      s.add_dependency(%q<bio>, ["~> 1.4"])
      s.add_dependency(%q<scaffolder>, ["~> 0.4"])
      s.add_dependency(%q<ronn>, ["~> 0.7"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5"])
      s.add_dependency(%q<gherkin>, ["~> 2.3.3"])
      s.add_dependency(%q<rspec>, ["~> 2.4"])
      s.add_dependency(%q<cucumber>, ["~> 0.10"])
      s.add_dependency(%q<fakefs>, ["~> 0.2"])
      s.add_dependency(%q<aruba>, ["~> 0.2"])
      s.add_dependency(%q<mocha>, ["~> 0.9"])
      s.add_dependency(%q<hashie>, ["~> 0.4"])
      s.add_dependency(%q<yard>, ["~> 0.6"])
      s.add_dependency(%q<scaffolder-test-helpers>, ["~> 0.1"])
    end
  else
    s.add_dependency(%q<configliere>, ["~> 0.1"])
    s.add_dependency(%q<bio>, ["~> 1.4"])
    s.add_dependency(%q<scaffolder>, ["~> 0.4"])
    s.add_dependency(%q<ronn>, ["~> 0.7"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5"])
    s.add_dependency(%q<gherkin>, ["~> 2.3.3"])
    s.add_dependency(%q<rspec>, ["~> 2.4"])
    s.add_dependency(%q<cucumber>, ["~> 0.10"])
    s.add_dependency(%q<fakefs>, ["~> 0.2"])
    s.add_dependency(%q<aruba>, ["~> 0.2"])
    s.add_dependency(%q<mocha>, ["~> 0.9"])
    s.add_dependency(%q<hashie>, ["~> 0.4"])
    s.add_dependency(%q<yard>, ["~> 0.6"])
    s.add_dependency(%q<scaffolder-test-helpers>, ["~> 0.1"])
  end
end

