class AddHotelIdToTestimonials < ActiveRecord::Migration
  def change
    add_column :testimonials, :hotel_id, :integer
  end
end
