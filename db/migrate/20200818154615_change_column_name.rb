class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :routes, :type, :style
  end
end
