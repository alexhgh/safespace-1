require 'rails_helper'
require 'factories'

RSpec.describe Conversation, type: :model do
  let(:student) { FactoryBot.create(:user) }
end
