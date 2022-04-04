class UsersController < ApplicationController
  def index
    @user = current_user
    @users = User.all
    @book = Book.new
    @books = Book.all
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
  end

  def edit
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction)
  end
end