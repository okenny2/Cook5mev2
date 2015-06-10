class AddNameToTestimonials < ActiveRecord::Migration
  def change
  	
  	add_column : cooks, :zodiac, :string

  	add_column : testimonials, :client, :string
  	add_column : testimonials , :hotel_name, :string
  	add_column : testimonials , :hotel_address, :string
  	add_column : testimonials , :hotel_city, :string
  	add_column : testimonials , :hotel_country, :string

  	add_column : users, :client_name, :string
   	add_column : users,  :language, :string
  	add_column : users, :employer, :string
  	add_column : users, :nationality, :string
  	add_column : users, 
  	add_column : users, :zodiac, :string
  	add_column : users, :desire, :string
  	    
  end

end
