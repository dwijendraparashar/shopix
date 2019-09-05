class Order < ApplicationRecord
	has_many :billingaddresses, dependent: :destroy
	accepts_nested_attributes_for :billingaddresses, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
