# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'creation' do
    it 'can be created with the right arguments' do
      category = Category.create({name: 'Category1', priority: 3})
      expect(category).to be_valid
    end

    it 'can not be created if the name is missing' do
      category = Category.create({name: nil, priority: 2})
      expect(category).not_to be_valid
    end

    it 'can not be created if the name already exists' do
      category1 = Category.create({name: 'Category1', priority: 2})
      category2 = Category.create({name: 'Category1', priority: 3})
      expect(category2).not_to be_valid
    end
  end

  context 'sorting' do
    
    it 'sort the higher priority at the beginning' do
      category1 = Category.create({name: 'Category1', priority: 2})
      category2 = Category.create({name: 'Category2', priority: 1})
      category3 = Category.create({name: 'Category3', priority: 4})
      category4 = Category.create({name: 'Category4', priority: 3})
      expect(Category.priority_ordered.first.name).to eq('Category3')
    end
  end
end
