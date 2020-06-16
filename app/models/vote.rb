# frozen_string_literal: true

class Vote < ApplicationRecord
  validates :user_id, uniqueness: { scope: :article_id } 

  belongs_to :user
  belongs_to :article

  def self.number_of_votes(user_id,article_id)
    where(user_id: user_id).
    where(article_id: article_id).
    count
  end

  def self.voteid(user_id,article_id)
    where(user_id: user_id).
    where(article_id: article_id).
    select(:id)
  end
end
