class DeleteDescription < ActiveRecord::Migration[5.2]
  def change
    remove_column :escorts, :description, :text
  end
end
