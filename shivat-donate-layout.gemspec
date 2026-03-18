# frozen_string_literal: true

require_relative "lib/shivat_donate_layout/version"

Gem::Specification.new do |spec|
  spec.name = "shivat-donate-layout"
  spec.version = ShivatDonateLayout::VERSION
  spec.authors = ["Shivat Zion"]
  spec.email = [""]

  spec.summary = "Reusable header and footer layout components for Shivat Zion donate pages"
  spec.description = "Rails engine providing donate_header and donate_footer partials with multi-language support"
  spec.homepage = "https://github.com/Continure/shivat-donate-layout"
  spec.required_ruby_version = ">= 3.0.0"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Continure/shivat-donate-layout"

  spec.files = Dir["{app,config,lib}/**/*", "README.md"]
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 7.0"
end
