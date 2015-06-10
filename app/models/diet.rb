class Diet < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true
	has_many :dishes
	has_many :users
	has_many :cooks
end
