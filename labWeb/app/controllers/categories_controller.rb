class CategoriesController < ApplicationController
  load_and_authorize_resource :only => [:new, :edit, :delete]
  skip_before_action :authenticate_user!, :only => [:index, :show]

  def index
    @categories = Category.all
  end

  def show 
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end
  
  def edit
     @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(categories_params)

    if @category.save
      redirect_to categories_path
    else
      render 'new'
    end
  end

  def update
    @category = Category.find(params[:id])

    if @category.update(categories_params)
      redirect_to categories_path
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to categories_path
  end

  private
    def categories_params
      params.require(:category).permit(:categoryName, :categoryDescription)
    end
end