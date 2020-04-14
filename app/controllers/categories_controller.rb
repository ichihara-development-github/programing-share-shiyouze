class CategoriesController < ApplicationController

  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def set_category
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      if params[:category][:image]
        image = params[:category][:image]
        File.binwrite("C:/Users/yoshi/my_blog/app/assets/images/categories/#{@category.id}.jpg", image.read)
        @category.update(image: "#{@category.id}.jpg")
      else
        @category.update(image: "default.jpg")
      end
      redirect_to "show"
    else
      render "edit"
    end
  end

  def index
    @categories = Category.all
  end

  def show
    @articles = @category.articles
  end

  def edit
  end

  def update
    @articles.update(category_params)
    redirect_to back
  end

  def destroy
    @category.destroy
  end

private
  def category_params
     params.require(:category).permit(:name, :description, :image)
  end

end
