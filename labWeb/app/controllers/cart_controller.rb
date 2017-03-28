class CartController < ApplicationController
  def index
  end

  def new
  	@cart = Cart.new
  end

  def show
    @cart = Cart.find(params[:id])
  end

  def create
    @cart = Cart.new(cart_params)

    if @cart.save
      redirect_to news_index_path
    else
      render 'new'
    end
  end

  private
    def cart_params
      params.require(:order).permit(:customerName, :customerEmail, :customerPhone, :customerComments, :customerOrder)
    end
end
