class Dish < ActiveRecord::Base
		validates :name, :presence => true, :uniqueness => true
	    validates :diet_id, :presence => true
	    belongs_to :diets
   	    belongs_to :cooks

end
