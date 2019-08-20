class NewEntriesToEscorts < ActiveRecord::Migration[5.2]
  def change
    add_column :escorts, :gender, :string
    add_column :escorts, :description, :text
  end
end
