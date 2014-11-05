class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :intro
      t.string :name
      t.string :email
      t.string :user_id
      t.array :requests

      t.timestamps
    end
  end
end
