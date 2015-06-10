class CreateCooks < ActiveRecord::Migration
  def change
    create_table :cooks do |t|
      t.string :name
      t.string :language
      t.string :passion
      t.integer :diet_id

      t.timestamps

    end
  end
end
