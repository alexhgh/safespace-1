require 'rails_helper'
require 'factories/user'

RSpec.describe Message, type: :model do
  let(:student) { FactoryBot.create(:student) }
end
