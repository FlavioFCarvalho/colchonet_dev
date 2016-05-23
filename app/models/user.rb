class User < ActiveRecord::Base
	validates_presence_of :email, :full_name, :location, :password

	validates_confirmation_of :password
	validates_length_of :bio, in: 5..10, allow_blank: false
end
