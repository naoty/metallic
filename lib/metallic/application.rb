require "rack/builder"

module Metallic
  class Application
    def self.controllers
      @controllers ||= []
    end

    def self.register_controller(controller)
      self.controllers << controller
    end

    def call(env)
      application = Rack::Builder.new do
        Metallic::Application.controllers.each { |controller| use controller }
        run Metallic::Controllers::Root
      end
      application.call(env)
    end
  end
end
