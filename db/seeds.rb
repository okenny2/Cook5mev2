# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
Diet.destroy_all
Cook.destroy_all
Dish.destroy_all
Hotel.destroy_all
Testimonial.destroy_all

# these didn't create well


vegetarian = Diet.create(name: "Vegetarian")
cook = Cook.create(:name => "Ryan Francis", language: "English", passion: "Pizza", diet_id: vegetarian.id)
vegetarian_dish = Dish.create(name: "Vegeterian Pizza", diet_id: vegetarian.id, cook_id: cook.id)
hotel = Hotel.create(:name => "Holiday Inn", address: "123 Main Street", city: "New York", country: "USA")
user = User.create(email: "ryan@example.com", password: "password", :username => "El Jefe" )
testimonial = Testimonial.create(user_id: user.id, cust_story: "I loved it", cook_id: cook.id, cook_story: "Great user")

