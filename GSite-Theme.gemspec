# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "gsite"
  spec.version       = "0.1.0.2.1b"
  spec.authors       = ["Gustavo Muratalla"]
  spec.email         = ["gusmuratalla@gmail.com"]

  spec.summary       = %q{My Personal Website Theme.}
  spec.homepage      = "https://github.com/Teku-Guy/GSite-Theme"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }
  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.add_runtime_dependency "jekyll", "~> 3.3"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
