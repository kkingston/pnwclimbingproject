class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :full_name
      t.string :email
      t.string :password_digest
      t.string :location
      t.boolean :partner

      t.timestamps
    end
  end
end
