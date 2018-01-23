
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "str_methods_nhubner/version"

Gem::Specification.new do |spec|
  spec.name          = "str_methods_nhubner"
  spec.version       = StrMethodsNhubner::VERSION
  spec.authors       = ["Nathan Hubner"]
  spec.email         = ["nathan.w.hubner@gmail.com"]

  spec.summary       = "Learning publishing gems"
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
