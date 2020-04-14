class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end

  def admin?
    redirect_to root_path unless current_user
  end

  def articles_group_by_date
    @articles_group_by_date = Article.group("date(created_at)")
  end
end
