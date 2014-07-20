require "bundler"
Bundler.require

require "./app/application"

run <%= application_name.classify %>::Application.new
