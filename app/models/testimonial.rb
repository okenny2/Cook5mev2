class Testimonial < ActiveRecord::Base
	validates :user_id, :presence => true
	validates :cook_id, :presence => true
	belongs_to :cooks # i'd like to include this
	belongs_to :users # i'd like to include this
end
