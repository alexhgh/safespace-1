require 'rails_helper'
require 'factories/user'

RSpec.describe Conversation, type: :model do
  let(:student) { FactoryBot.create(:student) }
end
