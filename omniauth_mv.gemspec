$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'omniauth_mv/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'omniauth_mv'
  s.version     = OmniauthMv::VERSION
  s.authors     = ['Gary Pinkham']
  s.email       = ['gpinkham@medivector.com']
  s.homepage    = 'https://github.com/MediVector/omniauth_mv'
  s.summary     = 'Summary of OmniauthMv.'
  s.description = 'Description of OmniauthMv.'
  s.license     = 'MIT'

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.add_dependency 'rails', '~> 5.0.0'
  s.add_runtime_dependency 'omniauth', '~> 1.1'

  s.add_development_dependency 'sqlite3'
end
