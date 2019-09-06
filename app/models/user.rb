class User < ApplicationRecord
  ratyrate_rater
	def is_admin?
   		return true if self.role =="admin"
  	end
  	has_many :bookings
  	has_many :wishlists
  	has_many :carts

    # has_secure_password
    has_many :products, dependent: :destroy
    has_many :user_feedbacks, dependent: :destroy
    

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
