require 'rails_helper'
require 'factories'

RSpec.describe ResourcesController, type: :controller do
  let(:student) { FactoryBot.create(:user) }

  before do
    student.confirm
    sign_in student
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
