class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validate :product_present
  validate :order_present

  before_save :finalize

  def unit_price
    if persisted?
      self[:unit_price]
    else
      product.price
    end
  end

private
  def product_present
    if product.nil?
      errors.add(:product, "No es valido, o no esta activo.")
    end
  end

  def order_present
    if order.nil?
      errors.add(:order, "no es una orden valida.")
    end
  end

  def finalize
    self[:unit_price] = unit_price
    self[:total_price] = unit_price 
  end
end