class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :contacts
  has_many :introductions
  has_many :requests

  def after_save(record)
  	# Contact.create({email: self.email})
  end

end
