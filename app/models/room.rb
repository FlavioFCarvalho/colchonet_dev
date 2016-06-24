class Room < ActiveRecord::Base
	
	has_many :reviews, dependent: :destroy
	belongs_to :user
    
    def complete_name
		"#{title}, #{location}"
	end

	validates_presence_of :title, :description, :location
end


