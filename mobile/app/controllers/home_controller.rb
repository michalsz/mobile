class HomeController < ApplicationController
  def index
  end

  def search
    @goods = ['apple', 'salt', 'bananas', 'cake']
  end

end
