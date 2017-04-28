class ProductsController < ApplicationController
  load_and_authorize_resource :only => [:new, :edit, :delete]
  skip_before_action :authenticate_user!, :only => [:index, :show]

  def index
    if params[:search] and params[:search] != ""
      @products = Product.where(:category => params[:search])
    else
      @products = Product.all.order('created_at DESC')
    end

    @order_item = current_order.order_items.new
  end

  def search

  end

  def show
    @product = Product.find(params[:id])
    @categories = Category.all.map{|c| [ c.categoryName, c.id ] }
  end

  def new
    @product = Product.new
    @categories = Category.all.map{|c| [ c.categoryName, c.id ] }
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    @product.category = Category.find(params[:category])

    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path
  end

  private
    def product_params
      params.require(:product).permit(:image, :productName, :productDescription, :price, :category, :search)
    end
end
