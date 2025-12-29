$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'gopad/version'

Gem::Specification.new do |s|
  s.name = 'gopad'
  s.version = Gopad::VERSION
  s.platform = Gem::Platform::RUBY

  s.authors = ['Thomas Boerger']
  s.email = ['thomas@webhippie.de']
  s.homepage = 'https://github.com/gopad/gopad-ruby'
  s.summary = 'Etherpad for markdown with Go'
  s.description = 'OpenAPI client for Gopad'
  s.license = 'Apache-2.0'

  s.files = ['CHANGELOG.md', 'CONTRIBUTING.md', 'DCO', 'README.md', 'LICENSE'] + Dir.glob('lib/**/*')
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 3.0'

  s.add_dependency 'faraday', '~> 2.9.0'
  s.add_dependency 'faraday-multipart', '~> 1.2.0'
  s.add_dependency 'logger', '~> 1.7.0'
  s.add_dependency 'marcel', '~> 1.0.4'

  s.metadata['rubygems_mfa_required'] = 'true'
end
