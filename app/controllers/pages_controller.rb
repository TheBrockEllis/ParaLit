class PagesController < ApplicationController

  def new
    @book = Book.find(params[:book_id])
    @page = Page.new
  end

end