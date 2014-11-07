class Request < ActiveRecord::Base

	belongs_to :user
	belongs_to :contact1, :class_name => "Contact"
	belongs_to :contact2, :class_name => "Contact" 
end
