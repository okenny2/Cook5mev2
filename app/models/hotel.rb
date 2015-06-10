class Hotel < ActiveRecord::Base
		validates :name, :presence => true, :uniqueness => { :scope => :address }
	    belongs_to :users 
end
