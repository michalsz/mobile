require 'spec_helper'

describe ProductsController, :type => :controller do

  before(:each) do
    @product = Product.create(:name => 'Product name', :description => 'Description')
  end

  describe "GET index" do
    it 'assigns products' do
      get :index

      assigns(:products)
      should respond_with(:success)
      should render_template(:index) 
    end
  end

  describe "GET show" do
    it 'assigns product' do
      get :show, :id => Product.first.id

      assigns(:product)
      should respond_with(:success)
      should render_template(:show) 
    end
  end
end
