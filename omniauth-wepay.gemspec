# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-wepay/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'omniauth-wepay'
  gem.version       = OmniAuth::Wepay::VERSION
  gem.authors       = ['Volkan Unsal, Arrel Gray']
  gem.email         = ['spocksplanet@gmail.com']
  gem.summary       = %q{OmniAauth strategy for WePay}
  gem.homepage      = %q{https://github.com/tenaciousflea/omniauth-wepay}
  gem.description   = %q{Provides an easy way to build OAuth using WePay for OmniAuth}
  gem.name          = 'omniauth-wepay'
  gem.require_paths = ['lib']

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")


  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'

  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
