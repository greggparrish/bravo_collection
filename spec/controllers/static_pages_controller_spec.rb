require 'rails_helper'

RSpec.describe StaticPagesController, :type => :controller do

  describe "GET title:string" do
    it "returns http success" do
      get :title:string
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET description:text" do
    it "returns http success" do
      get :description:text
      expect(response).to have_http_status(:success)
    end
  end

end
