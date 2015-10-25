class Product < ActiveRecord::Base
	belongs_to :category
	belongs_to :unit
	delegate :tax, to: :category, allow_nil: true
	has_many :taxes, through: :product_types
	has_and_belongs_to_many :product_types
end
