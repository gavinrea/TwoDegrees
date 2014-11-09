class ContactsUsers < ActiveRecord::Migration
  def change
  	  create_table :contacts_users , :id => false do |t|
      t.references :user, :null => false
      t.references :contact, :null => false
  	end
  end
end
