class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :escorts, :type, :origin
  end
end
