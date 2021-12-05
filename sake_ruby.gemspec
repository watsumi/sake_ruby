# frozen_string_literal: true

require_relative "lib/sake_ruby/version"

Gem::Specification.new do |spec|
  spec.name = "sake_ruby"
  spec.version = SakeRuby::VERSION
  spec.authors = ["watsumi"]
  spec.email = [""]

  spec.summary = "Seach a sake information includes Tokuteimeishou, raw materials, Seimaibuai, Shubo and the number of Hiire."
  spec.homepage = "https://github.com/watsumi/sake_ruby/"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7.2"

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/watsumi/sake_ruby/"
  spec.metadata["changelog_uri"] = "https://github.com/watsumi/sake_ruby/"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
