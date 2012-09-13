class HomeController < ApplicationController
  def index
    @categories = Category.all
  end

  def search
    @goods = ['apple', 'salt', 'bananas', 'cake']
  end

end
