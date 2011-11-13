# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{astrails-paypal_adaptive}
  s.version = "0.1.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tommy Chheng", "Ross Hale", "Boris Nadion"]
  s.date = %q{2011-11-13}
  s.description = %q{Lightweight wrapper for Paypal's Adaptive Payments API.}
  s.email = %q{boris@astrails.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.markdown"
  ]
  s.files = [
    "LICENSE",
    "README.markdown",
    "Rakefile",
    "VERSION",
    "astrails-paypal_adaptive.gemspec",
    "config/paypal_adaptive.yml",
    "lib/config.rb",
    "lib/ipn_notification.rb",
    "lib/pay_request_schema.json",
    "lib/paypal_adaptive.rb",
    "lib/request.rb",
    "lib/response.rb",
    "templates/paypal_ipn.rb",
    "test/create_account_test.rb",
    "test/data/invalid_chain_pay_request.json",
    "test/data/invalid_parallel_pay_request.json",
    "test/data/invalid_preapproval.json",
    "test/data/invalid_simple_pay_request_1.json",
    "test/data/valid_chain_pay_request.json",
    "test/data/valid_create_account_request.json",
    "test/data/valid_parallel_pay_request.json",
    "test/data/valid_preapproval.json",
    "test/data/valid_simple_pay_request_1.json",
    "test/helper.rb",
    "test/pay_request_schema_test.rb",
    "test/pay_request_test.rb",
    "test/payment_details_test.rb",
    "test/preapproval_test.rb"
  ]
  s.homepage = %q{http://github.com/astrails/paypal_adaptive}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{initial import}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<json>, [">= 0"])
      s.add_development_dependency(%q<jsonschema>, [">= 0"])
    else
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<jsonschema>, [">= 0"])
    end
  else
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<jsonschema>, [">= 0"])
  end
end

