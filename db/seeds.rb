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
user = User.create(email: "ryan@example.com", password: "password", :username => "El Jefe",  client_name: "Frequent Traveler", language: "Spanish", employer: "State Department", nationality:"Americano" )
testimonial = Testimonial.create(user_id: user.id, cust_story: "I loved it", cook_id: cook.id, cook_story: "Great user")

meatlover = Diet.create(name: "Meat Lover")
cook = Cook.create(:name => "Mickey Joe", language: "Swahili", passion: "Nuts", diet_id: meatlover.id)
meatlover_dish = Dish.create(name: "Burger", diet_id: meatlover.id, cook_id: cook.id)
hotel = Hotel.create(:name => "Express Stay", address: "123 Big Street", city: "Sandiago", country: "Mexicola")
user = User.create(email: "bobby@example.com", password: "password1", :username => "El Duarte", client_name: "Small Purse", language: "Italian", employer: "Zoo", nationality:"Corsican" )
testimonial = Testimonial.create(user_id: user.id, cust_story: "It was ok", cook_id: cook.id, cook_story: "He was a stiff")

omnivore = Diet.create(name: "Omnivore")
cook = Cook.create(:name => "Chef Awesome", language: "Francais", passion: "Crem Brule", diet_id: omnivore.id)
omnivore_dish = Dish.create(name: "Eggs and Salad", diet_id: omnivore.id, cook_id: cook.id)
hotel = Hotel.create(:name => "Luxery Spot", address: "Big Tree Drive", city: "The Capital", country: "Zanzibar")
user = User.create(email: "roddy@example.com", password: "password3", :username => "El Bano", client_name: "Big Spender", language: "German", employer: "Bank", nationality:"Austrian" )
testimonial = Testimonial.create(user_id: user.id, cust_story: "I got sick", cook_id: cook.id, cook_story: "Naive Customer")


 