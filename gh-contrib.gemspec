
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gh/contrib/version"

Gem::Specification.new do |spec|
  spec.name          = "gh-contrib"
  spec.version       = Gh::Contrib::VERSION
  spec.authors       = ["kondo takeshi"]
  spec.email         = ["chaspy@users.noreply.github.com"]

  spec.summary       = %q{Create contribution report of your github, implemented with ruby}
  spec.description   = %q{Create contribution report of your github, implemented with ruby}
  spec.homepage      = "https://github.com/chaspy/gh-contrib"
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
  spec.add_development_dependency "aruba"

  spec.add_dependency "thor" 
end
