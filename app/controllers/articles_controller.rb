class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def set_article
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.page(params[:page]).per(18)
    @parrarel_articles = Article.limit(5)
  end

  def group_index
    @date = params[:date]
    @articles = Article.where("created_at LIKE ?", "%#{params[:date]}%")
  end

  def latest_article
    @articles = Article.where(created_at: Time.zone.yesterday.beginning_of_day..Time.zone.today.end_of_day)
  end

  def new
    @article = Article.new
  end


  def create
    @article = Article.new(article_params)
    if @article.save
      if params[:article][:thumbnail_image]
        image = params[:article][:thumbnail_image]
        File.binwrite("C:/Users/yoshi/my_blog/app/assets/images/articles/#{@article.id}.jpg", image.read)
        @article.update(thumbnail_image: "#{@article.id}.jpg")
      else
        @article.update(thumbnail_image: "default.jpg" )
      end
      redirect_to articles_path
    else
      render :new
    end
  end

  def show
    category = @article.categories.shuffle.first
    @relational_articles = Category.find(category[:id]).articles
  end

  def edit
  end

  def update
    if @article.update(article_params)
      if params[:article][:thumbnail_image]
        image = params[:article][:thumbnail_image]
        File.binwrite("C:/Users/yoshi/my_blog/app/assets/images/articles/#{@article.id}.jpg", image.read)
        @article.update(thumbnail_image: "#{@article.id}.jpg")
      else
        @article.update(thumbnail_image: "default.jpg" )
      end
      redirect_to article_path(@article)
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
  end

  private

  def article_params
     params.require(:article).permit(:title, :content, :thumbnail_image, category_ids: [])
  end
end
