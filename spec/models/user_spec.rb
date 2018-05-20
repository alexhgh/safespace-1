require 'rails_helper'
require 'factories'

RSpec.describe User, type: :model do
  let(:student) { FactoryBot.create(:user) }
end
