class BlogsController < ApplicationController

  before_action :set_blog, only: [:show, :edit]

  def set_blog
    @blog = Blog.find(params[:id])
  end

  def index
    @blogs = Blog.all
    @relational_blogs = Blog.limit(3)
  end

  def new
    @blog = Blog.new
    @categories = Category.all
  end

  def create
    Blog.create(blog_params)
    redirect_to :back
  end



  def show
    @relational_blogs = Blog.limit(3)
  end

  def edit
  end

  def destroy
  end

  def freee_word_search
  end

  def category_search
  end

private

def blog_params
  params.require(:blogs).permit(:title, :content, :tumbnail_image)
end

end
