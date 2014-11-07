class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :contact1 
      t.integer :contact2
      t.string :email1
      t.string :email2
      t.string :text

      t.references :user, index: true

      t.timestamps
    end
  end
end
