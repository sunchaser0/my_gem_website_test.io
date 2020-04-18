require_relative 'lib/my_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "my_gem"
  spec.version       = MyGem::VERSION
  spec.authors       = ["F. Sunchaser"]
  spec.email         = ["finnjanson@gmail.com"]

  spec.summary       = %q{A look into AI, Data Science & Natural Language Processing.}
  spec.description   = %q{A set of articles and tutorials, exploring both the technology and philosophy around AI and Computational Linguistics}
  spec.homepage      = "https://github.com/sunchaser0/test-website.io"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/sunchaser0/test-website.io"
  spec.metadata["changelog_uri"] = "https://github.com/sunchaser0/test-website.io/blob/master/changelog.md"

  # Specify which files should be added tjekyll serveo the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
