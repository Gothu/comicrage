class BooksController < ApplicationController
  def index
    @books = current_user.books.includes(:user)
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

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      redirect_to book_path, notice: '編集が完了されました'
    else
      flash.now[:alert] = '編集が失敗しました。'
      render :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to root_path, notice: '削除しました'
  end

  private
  def book_params
    params.require(:book).permit(:title, :comment, :image).merge(user_id: current_user.id)
  end
end
