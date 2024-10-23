require 'rails_helper'

RSpec.describe Shot, type: :model do
  let(:valid_attributes) { { email: 'john.doe@test.com', password: 'password' } }

  describe 'validations' do
    it 'is valid with valid attributes' do
      user = User.new(valid_attributes)
      expect(user).to be_valid
    end

    it 'is not valid without a title' do
      user = User.new(email: '', password: 'password')
      expect(user).not_to be_valid
      expect(user.errors[:email]).to include("can't be blank")
    end

    it 'is not valid without description' do
      user = User.new(email: 'john.doe@test.com', password: '')
      expect(user).not_to be_valid
      expect(user.errors[:password]).to include("can't be blank")
    end
  end
end
