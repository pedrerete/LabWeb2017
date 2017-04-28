class Product < ApplicationRecord 
	belongs_to :category
	
	has_many :order_items

	dragonfly_accessor :image

	#image validations
	validates_presence_of :image, :productName, :category, :price

	validates_property :format, of: :image, in: ['jpeg', 'png', 'gif'],
		message: "the formats allowed are: .jpeg, .png, .gif", if: :image_changed?

	default_scope {where(active: true)}
end
