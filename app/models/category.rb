class Category < ActiveRecord::Base
		has_many :galleries
	accepts_nested_attributes_for :galleries
end
