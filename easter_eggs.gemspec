lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'easter_eggs/version'

Gem::Specification.new do |spec|
  spec.name                  = 'easter_eggs'
  spec.version               = EasterEggs::VERSION
  spec.authors               = 'Easy Bills'
  spec.summary               = 'Search for references in several movies, TV series, games, etc.'
  spec.description           = 'Search for references in several movies, TV series, games, etc.'
  spec.homepage              = 'https://github.com/easybills/easter_eggs'
  spec.license               = 'MIT'
  spec.required_ruby_version = '>= 2.3.0'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  unless spec.respond_to?(:metadata)
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject { |file| file.match(%r{^(spec)/}) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
end
