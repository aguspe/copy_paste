# frozen_string_literal: true
require 'fileutils'
require_relative "copy_paste/version"

module CopyPaste
  class << self
    def generate_files(amount, path, output)
      FileUtils.rm_rf Dir.glob("#{output}/*")
      amount.to_i.times do |number|
        FileUtils.cp_r(path, "#{output}/#{number}.cy.ts")
      end
    end
  end
end
