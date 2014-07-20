require "bundler"
Bundler.require

require "./app/application"
Dir["./app/controllers/**/*.rb"].each { |file| require file }

run <%= application_name.classify %>::Application.new
