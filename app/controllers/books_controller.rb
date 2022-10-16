class BooksController < ApplicationController
  def new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id 
    @book.save!
    redirect_to book_path(@book)
  end

  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
  end

  def edit
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to "/books"
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
