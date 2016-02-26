class DashboardController < ApplicationController
  before_action :authenticate_user!

  add_breadcrumb 'Dashboard', :root_path

  def index
    @books = current_user.books.all
  end
  
end
