class HomeController < ApplicationController
  def index
    @categories = Category.all
  end

  def search
    if params[:keyword].present?
      @products = Product.search(params[:keyword])
    end
  end

end
