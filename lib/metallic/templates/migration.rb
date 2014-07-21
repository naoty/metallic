class Create<%= resource_name.tableize.camelize %> < ActiveRecord::Migration
  def change
    create_table :<%= resource_name.tableize.to_sym %> do |t|
      t.timestamps
    end
  end
end
