require File.expand_path("../lib/keycloak/version", __FILE__)
Gem::Specification.new do |spec|
  spec.name          = "azerion_connect"
  spec.version       = Omniauth::Keycloak::VERSION
  spec.authors       = ["Fatih Aytac"]
  spec.email         = ["f.aytac@azerion.com"]
  
  spec.description   = %q{Omniauth strategy for Azerion Connect}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/computeus/azerion_connect"
  spec.license       = "MIT"
  spec.required_rubygems_version = '>= 1.3.5'
  spec.required_ruby_version = '>= 2.2'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0")
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  
  spec.add_dependency "omniauth", "~> 1.9.0"
  spec.add_dependency "omniauth-oauth2", "~> 1.6.0"
  spec.add_dependency "json-jwt", "~> 1.12"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'simplecov', '~> 0.16.1'
  spec.add_development_dependency 'webmock', '~> 3.4.2'
end
