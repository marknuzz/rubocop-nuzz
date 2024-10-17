# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'rubocop-nuzz-core'
  s.summary = "Nuzz's Ruby Style (Core)"
  s.author = 'Mark Nuzzolilo'
  s.email = 'nuzz604@gmail.com'
  s.homepage = 'https://github.com/marknuzz/rubocop-nuzz'

  s.license = 'MIT'

  s.version = '0.1.0'
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 3.0.0'

  s.add_dependency 'rubocop', '~> 1.67'

  s.files = %w[rubocop.yml rubocop-defaults.yml]
  s.metadata['rubygems_mfa_required'] = 'true'
end
