class CreateDebriefs < ActiveRecord::Migration[6.0]
  def change
    create_table :debriefs do |t|
      t.integer :user_id
      t.integer :route_id
      t.date :date
      t.string :time
      t.integer :stars
      t.string :difficulty
      t.text :experience
      t.text :beta
      t.boolean :recommend

      t.timestamps
    end
  end
end
