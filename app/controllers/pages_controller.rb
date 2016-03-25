class PagesController < ApplicationController

  add_breadcrumb 'Dashboard', :dashboard_path

  def new
    @book = Book.find(params[:book_id])
    @page = Page.new

    add_breadcrumb 'Book Settings', edit_book_path(@book)
    add_breadcrumb 'New Page', new_book_page_path(@book)
  end

  def create
    @book = Book.find(params[:book_id])

    @page = Page.new(secure_params)
    @page.book_id = params[:book_id]
    @page.image = params[:page][:image]

    @page.save

    flash[:success] = 'Page created'

    redirect_to edit_book_path(@book)
  end

  def edit
    @book = Book.find(params[:book_id])
    @page = Page.find(params[:id])

    add_breadcrumb 'Book Settings', edit_book_path(@book)
    add_breadcrumb 'Edit Page', edit_book_page_path(@book, @page)
  end

  def update_row_order
    @page = Page.find(secure_params[:id])
    @page.row_order_position = secure_params[:row_order_position]
    @page.save

    render nothing: true # this is a POST action, updates sent via AJAX, no view rendered
  end

  def destroy
    @book = Book.find(params[:book_id])

    @page = Page.find(params[:id])
    @page.destroy

    flash[:success] = 'Page deleted'

    redirect_to edit_book_path(@book)
  end

  def update
    @book = Book.find(params[:book_id])
    @page = Page.find(params[:id])

    @page.assign_attributes(secure_params)
    @page.save

    flash[:success] = 'Page updated'

    redirect_to edit_book_path(@book)
  end

  private

  def secure_params
    params.require(:page).permit(:book_id, :id, :row_order_position, :content, :image)
  end

end