require "thor"

module Metallic
  class CLI < Thor
    desc "version", "print the version of this gem"
    def version
      puts Metallic::VERSION
    end

    register Metallic::Commands::New, "new", "new APPLICATION_NAME", "generate a template for new application"
  end
end
