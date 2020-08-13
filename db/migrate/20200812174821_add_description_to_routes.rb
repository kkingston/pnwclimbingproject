class AddDescriptionToRoutes < ActiveRecord::Migration[6.0]
  def change
    add_column :routes, :description, :text
  end
end
