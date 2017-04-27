class OrderStatus < ApplicationRecord
	has_many :order_items
end
