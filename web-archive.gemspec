lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'web-archive/version'

Gem::Specification.new do |spec|
  spec.name          = "web-archive"
  spec.version       = WebArchive::VERSION
  spec.authors       = ["giiko"]
  spec.email         = [""]
  spec.summary       = "Util for web.archive.org"
  spec.homepage      = "https://github.com/giiko/web-archive"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
end
