$:.push File.expand_path('../lib', __FILE__)

require 'yawni'

Gem::Specification.new do |s|

  s.name        = 'yawni'
  s.version     = Yawni::VERSION
  s.authors     = ['Adam Dalton']
  s.email       = ['adam.dalton@gmail.com']
  s.homepage    = 'https://github.com/dalton/yawni'
  s.summary     = %q{ Ruby bindings to the Yawni Java WordNet toolkit. }
  s.description = %q{ Ruby bindings to the Yawni WordNet tools. }
  
  # Add all files.
  s.files = Dir['bin/**/*'] + Dir['lib/**/*'] + Dir['spec/**/*'] +  ['README.md', 'LICENSE']
  
  # Runtime dependency.
  s.add_runtime_dependency 'bind-it', '~>0.2.5'
  
  # Development dependency.
  s.add_development_dependency 'rspec'
  
end