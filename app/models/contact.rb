class Contact < ActiveRecord::Base
	has_and_belongs_to_many :users

	has_many :introductions, :class_name => "Intro", :foreign_key => "contact1"
	has_many :introductions, :class_name => "Intro", :foreign_key => "contact2"

	has_many :requests, :class_name => "Request", :foreign_key => "request1"
	has_many :requests, :class_name => "Request", :foreign_key => "request2"

end

# rails g model intro user_id contact1 contact2 email1 email2 message

# rails g migration AddContactToIntro contact1:integer contact2:integer email1:string email2:string 

# rails g migration users_contacts  

# angela = User.find(2).contacts

