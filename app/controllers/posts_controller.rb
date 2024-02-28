class PostsController < ApplicationController
  before_action :require_login, only: [:new, :create]
  
  def new
  end

  def create
  end

  def index
  end

  private

  def require_login
    unless user_signed_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_user_session_path
    end
  end

end
