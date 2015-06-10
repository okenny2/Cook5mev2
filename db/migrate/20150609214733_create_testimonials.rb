class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.integer :user_id
      t.string :cust_story
      t.integer :cook_id
      t.string :cook_story

      t.timestamps

    end
  end
end
