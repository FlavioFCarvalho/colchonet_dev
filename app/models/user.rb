class User < ActiveRecord::Base
	validates_presence_of :email, :full_name, :location, :password
end
