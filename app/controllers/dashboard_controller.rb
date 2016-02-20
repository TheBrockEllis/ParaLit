class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @books = current_user.books.all
  end
  
end
