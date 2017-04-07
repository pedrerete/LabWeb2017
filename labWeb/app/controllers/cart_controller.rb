class CartController < ApplicationController
  def index
    @products = Product.all
  end

  def new
  	@cart = Cart.new
  end

  def show
  end

  def create
    @cart = Cart.new(cart_params)

    if @cart.save
      redirect_to news_index_path
    else
      render 'new'
    end
  end

  def products
    render :partial => '/products/' 
  end

  private
    def cart_params
      params.require(:order).permit(:customerName, :customerEmail, :customerPhone, :customerComments, :customerOrder)
    end
end
