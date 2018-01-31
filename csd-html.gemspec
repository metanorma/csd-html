
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "csd/html/version"

Gem::Specification.new do |spec|
  spec.name          = "csd-html"
  spec.version       = Csd::Html::VERSION
  spec.authors       = ["Ribose Inc."]
  spec.email         = ["open.source@ribose.com"]

  spec.summary       = "csd-html lets you convert CSD XML into HTML."
  spec.description   = <<~DESCRIPTION
    csd-html lets you convert CSD XML into HTML.

    This gem is in active development.
  DESCRIPTION

  spec.homepage      = "https://github.com/riboseinc/csd-html"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
