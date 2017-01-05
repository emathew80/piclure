require 'rails_helper'

RSpec.describe LuresController, type: :controller do

  describe "lures#index action" do
    it "should successfully show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "lures#new action" do
    it "should successfully show the new form" do
      get :new
      expect(response).to have_http_status(:success)

    end
  end

  describe "lures#create action" do
    it "should successfully create a new lure in database" do
      post :create, lure: {message: 'Hello!'}
      expect(response).to redirect_to root_path

      lure = Lure.last
      expect(lure.message).to eq("Hello!")

    end
  end

end
