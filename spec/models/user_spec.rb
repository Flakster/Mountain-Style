# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'creation' do
    it 'can be created' do
      user = User.create({name: 'user1', email: 'user1@mail.com', password: '123456'})
      expect(user).to be_valid
    end
  end
end
