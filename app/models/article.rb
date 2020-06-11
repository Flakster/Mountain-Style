class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :tags, inverse_of: :articles
  has_many :categories, through: :tags
  has_many :votes
  
end
