class BooksController < ApplicationController
  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end

  def show
    @newbook = Book.new
    @book = Book.find(params[:id])
    @user = @book.user
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book)
    else
      @user = current_user
      @books = Book.all
      render :index
    end
  end

  private
    def book_params
      params.require(:book).permit(:title,:body)
    end

end
