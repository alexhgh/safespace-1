require 'rails_helper'
require 'factories/user'

RSpec.describe ChatController, type: :controller do
  let(:user) { FactoryBot.create(:user) }

  before do
    user.confirm
    sign_in user
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to be_successful
    end
  end

end
