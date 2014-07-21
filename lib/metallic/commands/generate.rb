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
        template "controller.rb", "app/controllers/#{resource_name.underscore.pluralize}_controller.rb"
      end

      desc "model RESOURCE_NAME", "generate a template for new model and migration to create table"
      def model
        template "model.rb", "app/models/#{resource_name.underscore.singularize}.rb"
        template "migration.rb", "db/migrations/#{timestamp}_create_#{resource_name.tableize}.rb"
      end

      private

      def application_name
        Pathname.pwd.basename.to_s
      end

      def timestamp
        Time.now.strftime("%Y%m%d%H%M%S")
      end
    end
  end
end
