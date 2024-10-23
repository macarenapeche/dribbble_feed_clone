require 'rails_helper'

RSpec.describe Shot, type: :model do
  let(:user) { User.create(email: 'john.doe@test.com', password: 'password') }
  let(:valid_attributes) { { title: 'Sample Shot', description: 'This is a shot.', user: user } }

  describe 'associations' do
    it 'belongs to an user' do
      shot = Shot.new(valid_attributes)
      expect(shot.user).to eq(user)
    end
  end

  describe 'validations' do
    it 'is valid with valid attributes' do
      shot = Shot.new(valid_attributes)
      expect(shot).to be_valid
    end

    it 'is not valid without a title' do
      shot = Shot.new(title: '', description: 'This is a shot', user: user)
      expect(shot).not_to be_valid
      expect(shot.errors[:title]).to include("can't be blank")
    end

    it 'is not valid without description' do
      shot = Shot.new(title: 'Sample Shot', description: '', user: user)
      expect(shot).not_to be_valid
      expect(shot.errors[:description]).to include("can't be blank")
    end
  end
end
