# frozen_string_literal: true

module ShivatDonateLayout
  module ApplicationHelper
    def shivat_donate_layout_header
      render partial: "shivat_donate_layout/shared/donate_header"
    end

    def shivat_donate_layout_footer
      render partial: "shivat_donate_layout/shared/donate_footer"
    end

    def shivat_donate_layout_root_path
      if respond_to?(:root_path)
        root_path
      else
        ShivatDonateLayout.root_path
      end
    end

    def shivat_donate_layout_donate_path
      if respond_to?(:donate_path)
        donate_path
      else
        ShivatDonateLayout.donate_path
      end
    end

    def shivat_donate_layout_image_path(name)
      asset_path("shivat_donate_layout/#{name}")
    end
  end
end
