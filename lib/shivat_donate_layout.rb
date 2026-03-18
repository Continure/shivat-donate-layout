# frozen_string_literal: true

require "shivat_donate_layout/version"
require "shivat_donate_layout/engine"

module ShivatDonateLayout
  class Error < StandardError; end

  class << self
    attr_accessor :root_path, :donate_path

    def configure
      yield self
    end
  end

  self.root_path = "/"
  self.donate_path = "/donate"
end
