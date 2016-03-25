class WebsiteController < ApplicationController

  def index
    @disable_breadcrumbs = true
  end

  def about
    @disable_breadcrumbs = true
  end

  def why
    @disable_breadcrumbs = true
  end

end
