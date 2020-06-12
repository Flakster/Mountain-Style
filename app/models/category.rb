# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :tags
  has_many :articles, through: :tags
  validates :name, uniqueness: true, presence: true
end
