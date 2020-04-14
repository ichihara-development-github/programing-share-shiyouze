module ApplicationHelper

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end

  def default_image
    render "shared/default_image"
  end

  def articles_group_by_date
    @counts = Article.group("date(created_at)").count
  end

  def full_path
    @full_path = "C:/Users/yoshi/my_blog/app/assets/images/"
  end
end
