class Books::SearchesController < ApplicationController

  def index
    if params[:title_key]
      @books = current_user.books.where('title LIKE?', "%#{params[:title_key]}%")
    else
      @books = current_user.books.all
    end
  end

end
