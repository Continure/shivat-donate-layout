# frozen_string_literal: true

# Gem root: initializers -> config -> dummy -> test -> gem
gem_root = File.expand_path("../../../..", __dir__)
ActionController::Base.append_view_path(File.join(gem_root, "app", "views"))
Rails.application.config.assets.paths << File.join(gem_root, "app", "assets", "images")
