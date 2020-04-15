class CategoriesController < ApplicationController

  def index
    @parents = Category.all.order("id ASC").limit(10)
  end

  def show
    @category = Category.find(params[:id])
    @books = @category.books.where(user_id: current_user.id).order("created_at DESC")
  end

end
