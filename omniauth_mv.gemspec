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

  s.files = Dir["{app,config,db,lib}/**/*", 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '~> 4.1.0.rc1'

  s.add_development_dependency 'sqlite3'
end
