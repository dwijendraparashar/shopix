class Product < ApplicationRecord
	belongs_to :category
    has_many :carts, dependent: :destroy
    has_many :user_feedbacks
    belongs_to :users
    has_many :users, through: :user_feedbacks
    ratyrate_rateable "review"

 	mount_uploader :image, ImageUploader
 	def display_price
 		result = ""
 		if self.price.to_f > 0
 			result += "#{self.price.to_i}"
 		end
 		return result	
 	end

 	def display_full_price
 		result = ""
 		if self.unit_price.to_f > 0
 			result += "#{self.unit_price.to_i}"
 		end
 		return result
 	end	

 	def discount_precentage

 		if self.price.present? && self.price > 0 && self.unit_price.present? && self.unit_price > 0
 			" " + (100 - (self.price.to_f / self.unit_price.to_f * 100.0)).to_s + "%"
 		else
 			nil
 		end	 		
 	end
end
