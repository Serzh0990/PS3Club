# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "s3"
  s.version = "0.3.13"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kuba Ku\u{17a}ma"]
  s.date = "2013-07-08"
  s.description = "S3 library provides access to Amazon's Simple Storage Service. It supports both: European and US buckets through REST API."
  s.email = ["kuba@jah.pl"]
  s.homepage = "http://github.com/qoobaa/s3"
  s.require_paths = ["lib"]
  s.rubyforge_project = "s3"
  s.rubygems_version = "2.0.3"
  s.summary = "Library for accessing S3 objects and buckets"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<proxies>, ["~> 0.2.0"])
      s.add_development_dependency(%q<test-unit>, [">= 2.0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
    else
      s.add_dependency(%q<proxies>, ["~> 0.2.0"])
      s.add_dependency(%q<test-unit>, [">= 2.0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
    end
  else
    s.add_dependency(%q<proxies>, ["~> 0.2.0"])
    s.add_dependency(%q<test-unit>, [">= 2.0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
  end
end
