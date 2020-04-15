class BooksController < ApplicationController
  before_action :set_book, only: [:show, :destroy, :edit, :update]

  def index
    @books = current_user.books.includes(:user).order("created_at DESC").page(params[:page]).per(35)
  end

  def new
    @book = Book.new
    @category_parent_array = ["選択してください"]
    Category.where(ancestry: nil).each do |parent|
      @category_parent_array << parent.company 
    end
  end

  def get_category_children
    @category_children = Category.find_by(company: "#{params[:parent_id]}", ancestry: nil).children
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path, notice: '登録が完了されました'
    else
      redirect_to new_book_path, notice: 'タイトルとカテゴリを入力してください'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to book_path, notice: '編集が完了されました'
    else
      flash.now[:alert] = '編集が失敗しました'
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to root_path, notice: '削除しました'
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :comment, :image, :writer, :price, :stock, :image_cache, :remove_image, :category_id).merge(user_id: current_user.id)
  end
end
