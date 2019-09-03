class Product < ApplicationRecord
	belongs_to :category
  has_many :carts, dependent: :destroy

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
 		if price.present? && price > 0 && unit_price.present? && unit_price > 0
 			" " + (100 - (price.to_f / unit_price.to_f * 100.0)).to_s + "%"
 		else
 			nil
 		end	 		
 	end
end
