class CreateRoutes < ActiveRecord::Migration[6.0]
  def change
    create_table :routes do |t|
      t.string :name
      t.string :type
      t.string :rating
      t.integer :stars
      t.integer :pitches
      t.string :location
      t.string :url

      t.timestamps
    end
  end
end
