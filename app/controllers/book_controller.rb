class BookController < ApplicationController

  def index
    #this is not used because the listing of books is done in the dashboard#index
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(secure_params)
    @book.user_id = current_user.id

    @book.save

    redirect_to dashboard_path
  end

  def edit
  end

  def update
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to '/dashboard'
  end

  private

  def secure_params
    params.require(:book).permit(:title, :author, :description)
  end

end
