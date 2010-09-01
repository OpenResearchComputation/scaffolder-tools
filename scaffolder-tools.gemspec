# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{scaffolder-tools}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Barton"]
  s.date = %q{2010-09-01}
  s.description = %q{Binaries to use genome scaffolds}
  s.email = %q{mail@michaelbarton.me.uk}
  s.executables = ["scaffold-validate", "scaffold2sequence"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/scaffold-validate",
     "bin/scaffold2sequence",
     "lib/scaffold_to_sequence.rb",
     "lib/scaffold_validate.rb",
     "man/scaffold-validate.1.ronn",
     "man/scaffold2sequence.1.ronn",
     "scaffolder-tools.gemspec",
     "spec/scaffold_to_sequence_spec.rb",
     "spec/scaffold_validate_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/michaelbarton/scaffolder-tools}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Tools for manipulating genome scaffolds}
  s.test_files = [
    "spec/scaffold_to_sequence_spec.rb",
     "spec/scaffold_validate_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<scaffolder>, [">= 0.2.0"])
      s.add_runtime_dependency(%q<configliere>, [">= 0.1.1"])
      s.add_development_dependency(%q<mocha>, ["= 0.9.8"])
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<steak>, [">= 0.3.8"])
    else
      s.add_dependency(%q<scaffolder>, [">= 0.2.0"])
      s.add_dependency(%q<configliere>, [">= 0.1.1"])
      s.add_dependency(%q<mocha>, ["= 0.9.8"])
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<steak>, [">= 0.3.8"])
    end
  else
    s.add_dependency(%q<scaffolder>, [">= 0.2.0"])
    s.add_dependency(%q<configliere>, [">= 0.1.1"])
    s.add_dependency(%q<mocha>, ["= 0.9.8"])
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<steak>, [">= 0.3.8"])
  end
end

