# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "decidim-ui_tweaks"
  s.version = "0.0.1"
  s.authors = ["Digidem Lab"]
  s.email = ["info@digidemlab.org"]
  s.summary = "UI tweaks for Decidim: back buttons, back-to-top, language selector, navigation styles"
  s.description = s.summary
  s.homepage = "https://github.com/digidemlab"
  s.required_ruby_version = ">= 3.0"

  s.files = Dir["{app,config,lib}/**/*", "LICENSE", "README.md"]

  s.add_dependency "decidim-core", "~> 0.30.0"
end
