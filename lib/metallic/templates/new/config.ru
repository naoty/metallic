require "bundler"
Bundler.require

require "./app/application"
Dir["./app/models/**/*.rb"].each { |file| require file }
Dir["./app/controllers/**/*.rb"].each { |file| require file }

run <%= application_name.classify %>::Application.new

