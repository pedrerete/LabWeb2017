class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	helper_method :current_order

	before_action :authenticate_user!

	def after_sign_in_path_for(resource)
		@products = Product.all
		products_path(@products)
	end

	def current_order
    if !session[:order_id].nil? and Order.find_by_id(session[:order_id])
      Order.find(session[:order_id])
    else
      Order.new
    end
  end
end
