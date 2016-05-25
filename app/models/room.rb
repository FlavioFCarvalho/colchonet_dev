class Room < ActiveRecord::Base
 
    def complete_name
		"#{title}, #{location}"
	end

	validates_presence_of :title, :description, :location
end


