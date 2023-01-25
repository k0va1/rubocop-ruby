# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "rubocop-ruby"
  spec.version = "1.0.0"
  spec.authors = ["k0va1"]
  spec.email = ["al3xander.koval@gmail.com"]

  spec.summary = "k0va1's rubocop template for Ruby"
  spec.description = "k0va1's rubocop template for Ruby"
  spec.homepage = "https://github.com/k0va1/rubocop-ruby"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/k0va1/rubocop-ruby"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 1.44.1"
  spec.add_dependency "rubocop-performance"
  spec.add_dependency "rubocop-rails"
  spec.add_dependency "rubocop-rspec"
  spec.metadata["rubygems_mfa_required"] = "true"
end
