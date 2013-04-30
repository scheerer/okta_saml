$:.push File.expand_path("../lib", __FILE__)

require 'okta_saml/version'

Gem::Specification.new do |gem|
  gem.name          = "okta_saml"
  gem.version       = OktaSaml::VERSION
  gem.authors       = ["Jared Branum", "Ed Leung"]
  gem.email         = ["jbranum@primedia.com", "eleung@primedia.com"]
  gem.description   = %q{Write a gem description}
  gem.summary       = %q{Write a gem summary}
  gem.homepage      = ""

  gem.files         = Dir["{app,config,db,lib}/**/*"] + ["LICENSE.txt", "Rakefile", "README.md"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})

  gem.add_dependency "rails",     "~> 3.2.6"
  gem.add_dependency "ruby-saml", "~> 0.7.2"
end
