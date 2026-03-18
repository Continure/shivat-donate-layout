# frozen_string_literal: true

require "rails/engine"
require "shivat_donate_layout/application_helper"

module ShivatDonateLayout
  class Engine < ::Rails::Engine
    initializer "shivat_donate_layout.assets" do |app|
      app.config.assets.paths << root.join("app", "assets", "images")
    end

    initializer "shivat_donate_layout.helpers" do
      ActiveSupport.on_load(:action_view) do
        include ShivatDonateLayout::ApplicationHelper
      end
    end

    initializer "shivat_donate_layout.view_paths" do |app|
      app.config.paths["app/views"] << root.join("app", "views")
    end

    initializer "shivat_donate_layout.i18n" do |app|
      app.config.i18n.load_path += Dir[root.join("config", "locales", "**", "*.yml")]
    end
  end
end
