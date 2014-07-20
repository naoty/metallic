require "thor"
require "active_support/inflector"

module Metallic
  module Commands
    class New < Thor::Group
      include Thor::Actions

      argument :application_name

      def self.source_root
        File.expand_path("../templates/new", File.dirname(__FILE__))
      end

      def create_templates
        %w(Gemfile config.ru app/application.rb).each do |path|
          template path, "#{application_name}/#{path}"
        end
      end
    end
  end
end
