require "yaml"

module <%= application_name.classify %>
  class Application < Metallic::Application
    def initialize
      database_config = YAML.load_file("config/database.yml")
      ActiveRecord::Base.establish_connection(database_config[ENV["RACK_ENV"]])
    end
  end
end
