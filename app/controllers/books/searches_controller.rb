class Books::SearchesController < ApplicationController

  def index
    if params[:title_key]
      @books = current_user.books.where('title LIKE?', "%#{params[:title_key]}%").order("created_at DESC").page(params[:page]).per(35)
    else
      @books = current_user.books.all.order("created_at DESC").page(params[:page]).per(35)
    end
  end

end
