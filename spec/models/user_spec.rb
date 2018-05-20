require 'rails_helper'
require 'factories/user'

RSpec.describe User, type: :model do
  context "validation" do
    let!(:user) { FactoryBot.create(:user) }
    let(:random) { FactoryBot.build(:random_user) }

    it "ensures username is present" do
      random.username = nil
      expect(random.save).to eq(false)
    end

    it "ensures username is unique" do
      random.username = "John Doe"
      expect(random.save).to eq(false)
    end

    it "ensures email is valid" do
      random.email = "john@gmail.com"
      expect(random.save).to eq(false)
    end

    it "ensures email is unique" do
      random.email = "john@berkeley.edu"
      expect(random.save).to eq(false)
    end

  end
end
