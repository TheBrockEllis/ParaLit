class PagesController < ApplicationController

  add_breadcrumb 'Dashboard', :dashboard_path

  def new
    @book = Book.find(params[:book_id])
    @page = Page.new

    add_breadcrumb 'Book Settings', edit_book_path(@book)
    add_breadcrumb 'New Page', new_book_page_path(@book)
  end

end