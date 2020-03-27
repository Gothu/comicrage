class CategoriesController < ApplicationController

  def index
    @parents = Category.all.order("id ASC").limit(10)
  end

  def show
    @category = Category.find(params[:id])
    @books = @category.books
  end

end
