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
end
