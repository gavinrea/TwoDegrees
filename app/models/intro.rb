class Intro < ActiveRecord::Base

	belongs_to :user
	belongs_to :contact1, :class_name => "Contact"
	belongs_to :contact2, :class_name => "Contact" 
end


# rails g migration AddRatingToMovies rating:float