class Room < ActiveRecord::Base
    belongs_to :user
    
    def complete_name
		"#{title}, #{location}"
	end

	validates_presence_of :title, :description, :location
end


