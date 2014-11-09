class CreateIntros < ActiveRecord::Migration
	def change
		create_table :introductions do |t|
			t.integer :contact1 
			t.integer :contact2
			t.string :email1
			t.string :email2
			t.string :text

			t.references :user, index: true

			t.timestamps
		end
		create_table :users_contacts, id: false do |t|
			t.belongs_to :user
			t.belongs_to :contact
		end
	end
end
