require "thor"
require "active_support/inflector"

module Metallic
  module Commands
    class Generate < Thor
      include Thor::Actions

      argument :resource_name

      def self.source_root
        File.expand_path("../templates", File.dirname(__FILE__))
      end

      desc "controller RESOURCE_NAME", "generate a template for new controller"
      def controller
        template "controller.rb", "app/controllers/#{resource_name.pluralize}_controller.rb"
      end

      private

      def application_name
        Pathname.pwd.basename.to_s
      end
    end
  end
end
