require 'spec_helper'

describe HomeController, :type => :controller do

  before(:each) do
    @category = Category.create(:name => 'Category name')
  end

  describe "GET index" do
    it 'assigns categories' do
      get :index

      assigns(:categories)
      should respond_with(:success)
      should render_template(:index) 
    end
  end

  describe "POST search" do
    it 'assigns products' do
      post :search, :keyword => 'product'

      assigns(:products)
      should respond_with(:success)
      should render_template(:search) 
    end
  end

end
