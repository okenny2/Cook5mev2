class Dish < ActiveRecord::Base
		validates :name, :presence => true, :uniqueness => true
	    validates :diet_id, :presence => true
	    belongs_to :diets
   	    belongs_to :cooks

   	    IMAGES = [
   	    	"http://cdn.meme.am/instances/55981469.jpg",
   	    	"http://upload.wikimedia.org/wikipedia/en/4/44/Derek_Smalls.jpg"
   	    ]
end
