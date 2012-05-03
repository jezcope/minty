# -*- encoding: utf-8 -*-
require File.expand_path('../lib/minty/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jez Cope"]
  gem.email         = ["J.Cope@bath.ac.uk"]
  gem.description   = <<-EOF
    Minty is mostly just my attempt to learn how to use the DataCite API. It
    might be useful for you too.
  EOF
  gem.summary       = %q{A quick and dirty gem which mints DataCite DOIs}
  gem.homepage      = "http://github.com/jezcope/minty"

  gem.add_dependency('rest-client')

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "minty"
  gem.require_paths = ["lib"]
  gem.version       = Minty::VERSION
end
