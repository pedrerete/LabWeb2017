class Product < ApplicationRecord 
	dragonfly_accessor :image

	#image validations
	validates_presence_of :image

	validates_property :format, of: :image, in: ['jpeg', 'png', 'gif'],
		message: "the formats allowed are: .jpeg, .png, .gif", if: :image_changed?

end
