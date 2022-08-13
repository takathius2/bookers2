class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :update]
  def show
    @user = User.find(params[:id])
    @book = Book.new
    @users = @user.profile_image
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def index
    @users = User.all
    @user = current_user
    @user_list = @user.profile_image
    @book = Book.new
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
  
  private
  
  def correct_user
    user = User.find(params[:id])
    if current_user.id != user.id
      redirect_to user_path(current_user.id)
    end
  end
  
  def user_params
    params.require(:user).permit(:name, :profile_image, :user_introduction)
  end
  
end
