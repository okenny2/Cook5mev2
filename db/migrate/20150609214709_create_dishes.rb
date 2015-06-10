class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :diet_id
      t.integer :cook_id

      t.timestamps

    end
  end
end
