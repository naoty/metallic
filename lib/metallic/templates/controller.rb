module <%= application_name.classify %>
  class <%= resource_name.classify.pluralize %>Controller < Sinatra::Base
    Metallic::Application.register_controller self

    get "/<%= resource_name.pluralize %>" do
      [200, "GET /<%= resource_name.pluralize %>"]
    end

    get "/<%= resource_name.pluralize %>/:id" do
      [200, "GET /<%= resource_name.pluralize %>/:id"]
    end

    post "/<%= resource_name.pluralize %>" do
      [201, "POST /<%= resource_name.pluralize %>"]
    end

    put "/<%= resource_name.pluralize %>/:id" do
      [200, "PUT /<%= resource_name.pluralize %>/:id"]
    end

    patch "/<%= resource_name.pluralize %>/:id" do
      [200, "PATCH /<%= resource_name.pluralize %>/:id"]
    end

    delete "/<%= resource_name.pluralize %>/:id" do
      [200, "DELETE /<%= resource_name.pluralize %>/:id"]
    end
  end
end
