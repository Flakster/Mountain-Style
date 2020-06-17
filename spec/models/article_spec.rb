# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Article, type: :model do
  
  describe 'creation' do
    let(:user1) { User.create(name: 'user1', email: 'user11@mail.com', password: '123456') }
    it 'can be created' do

      article = Article.new(title: 'title...', body: 'article..', image: 'default', author_id: user1.id)
        expect(article).to be_valid
    end
  end
end
