# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'rubocop-nuzz-core'
  s.summary = "Nuzz's Ruby Style (Core)"
  s.author = 'Mark Nuzzolilo'
  s.email = 'nuzz604@gmail.com'

  s.homepage = 'https://github.com/marknuzz/rubocop-nuzz'
  s.metadata['homepage_uri'] = s.homepage
  s.metadata['source_code_uri'] = 'https://github.com/marknuzz/rubocop-nuzz/blob/main/gems/rubocop-nuzz-core'
  s.metadata['changelog_uri'] = 'https://github.com/marknuzz/rubocop-nuzz/blob/main/CHANGELOG.md'
  s.metadata['rubygems_mfa_required'] = 'true'

  s.license = 'MIT'

  s.version = '0.1.1'
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 3.0.0'

  s.add_dependency 'rubocop', '~> 1.67'

  s.files = %w[rubocop.yml rubocop-defaults.yml]
  s.cert_chain = ['certs/marknuzz.pem']
  s.signing_key = File.expand_path('~/.ssh/gem-private_key.pem') if $PROGRAM_NAME =~ /gem\z/
end
