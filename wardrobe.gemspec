$:.push File.expand_path('../lib', __FILE__)

require 'wardrobe/version'

Gem::Specification.new do |s|
  s.name        = 'wardrobe'
  s.version     = Wardrobe::VERSION
  s.authors     = ['Joel Oliveira']
  s.email       = ["joel.oliveira@gmail.com"]
  s.homepage    = 'http://github.com/jayroh/wardrobe'
  s.summary     = 'Theming rails apps should be easy'
  s.description = 'When your rails apps need a change of clothing, go to the wardrobe'

  s.files = Dir["{app,config,db,lib}/**/*", 'MIT-LICENSE', 'Rakefile', 'README.mkdn']

  s.add_dependency 'rails', '~> 4.0.1'

  s.add_development_dependency 'rspec-rails'
end
