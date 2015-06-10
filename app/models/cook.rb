class Cook < ActiveRecord::Base
	#validates :name, :presence => true, :uniqueness => true
	has_many :dishes
	has_many :diets
	has_many :testimonials 
end
