class BooksController < ApplicationController
  def index
    @books = current_user.books
  end

  def new
    @book = Book.new
  end
    
  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to root_path, notice: '登録が完了されました'
    else
      flash.now[:alert] = 'タイトルを入力してください。'
      render :new
    end
    
  end

  def show
    @book = Book.find(params[:id])
  end

  private
  def book_params
    params.require(:book).permit(:title, :comment, :image).merge(user_id: current_user.id)
  end
end
