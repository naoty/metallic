require "yaml"

require "active_record"
require "active_record/tasks/database_tasks"
load "active_record/railties/databases.rake"

Dir["./db/migrations/*.rb"].each { |file| require file }

environment = ENV["RACK_ENV"] || "development"
database_config = YAML.load_file("config/database.yml")

ActiveRecord::Tasks::DatabaseTasks.tap do |config|
  config.root                   = Rake.application.original_dir
  config.env                    = environment
  config.db_dir                 = "db"
  config.database_configuration = database_config
  config.migrations_paths       = ["db/migrations"]
end
ActiveRecord::Base.establish_connection(database_config[environment])

