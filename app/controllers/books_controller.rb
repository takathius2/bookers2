class BooksController < ApplicationController
  def new
    @book = Book.new(book_paarams)
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path(@book.id)
  end

  def index
    @books = Book.all
    @user = @books
  end

  def show
    @book = Book.find(params[:id])
    @user = @book
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to book_path
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body, :id, )
  end
end