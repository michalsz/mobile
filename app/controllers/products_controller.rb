class ProductsController < ApplicationController
  def index
    @products = Product.where(:category_id => params[:category_id])
  end

  def show
    begin
      @product = Product.find(params[:id])
    rescue
      redirect_to home_url
    end
  end
end
