# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gem_tatsuki/version'

Gem::Specification.new do |spec|
  spec.name          = "gem_tatsuki"
  spec.version       = GemTatsuki::VERSION
  spec.authors       = ["Tatsuki-M"]
  spec.email         = ["tatsukitatsuki0923@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = ""
  end

  spec.summary       = " practice making sample gem"
  spec.description   = "practice making sample gem"
  spec.homepage      = ""
  spec.license       = ""

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
