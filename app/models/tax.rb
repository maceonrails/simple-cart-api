class Tax < ActiveRecord::Base
	has_many :categories
	has_many :product_types
end
