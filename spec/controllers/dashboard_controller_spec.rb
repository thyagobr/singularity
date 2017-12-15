require 'rails_helper'

RSpec.describe DashboardController, type: :controller do

  describe "GET #main" do
    before do
      @user = create(:user)
    end

    it "returns http success" do
      session[:user_id] = @user.id
      get :main
      expect(response).to have_http_status(:success)
    end
  end

end
