class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    begin
      @product = Product.find(params[:id])
    rescue
      redirect_to home_url
    end
  end
end
