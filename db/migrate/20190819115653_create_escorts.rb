class CreateEscorts < ActiveRecord::Migration[5.2]
  def change
    create_table :escorts do |t|
      t.string :name
      t.string :age
      t.string :size
      t.string :type
      t.string :available_dates
      t.integer :price_per_day
      t.string :city
      t.string :hair_color
      t.references :user, foreign_key: true

      t.timestamps
    end

  end
end
