Gem::Specification.new do |spec|
  spec.name          = 'home-assistant-video-conf-detection'
  spec.version       = '1.0'
  spec.authors       = ['Grégoire Seux']
  spec.email         = ['grego_github_homeassistant@familleseux.net']

  spec.required_ruby_version = '>= 2.7'
  spec.summary       = 'Videoconf detection to MQTT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'pry'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'

  spec.add_development_dependency 'rubocop'
  spec.add_runtime_dependency 'mixlib-shellout'
  spec.add_runtime_dependency 'mqtt'
end
