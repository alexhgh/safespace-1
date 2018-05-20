require 'rails_helper'
require 'factories'

RSpec.describe Message, type: :model do
  let(:student) { FactoryBot.create(:user) }
end
