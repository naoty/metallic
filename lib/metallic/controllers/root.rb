require "sinatra/base"

module Metallic
  module Controllers
    class Root < Sinatra::Base
      not_found do
        [404, "Not Found"]
      end
    end
  end
end
