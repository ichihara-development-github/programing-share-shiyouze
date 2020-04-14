class TopController < ApplicationController

  before_action :admin?, only: [:management, :analysis]

  def top
  end

  def about
  end

  def article_management
  end

  def analysis
  end


end
