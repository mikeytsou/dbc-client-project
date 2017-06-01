require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(username: 'Tom', email: 'tom@tom.com', password: 'tomtomtom') }

  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(user).to be_valid
    end

    it 'is not valid without a username' do
      user.username = ''
      expect(user).to_not be_valid
    end  

    it 'is not valid without an email' do
      user.email = ''
      expect(user).to_not be_valid
    end

    it 'is not valid without a password of at least 6 characters' do
      user.password = 'tom'
      expect(user).to_not be_valid
    end
  end
end
