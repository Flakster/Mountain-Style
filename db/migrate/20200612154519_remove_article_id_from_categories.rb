class RemoveArticleIdFromCategories < ActiveRecord::Migration[6.0]
  def change
    remove_column :categories, :article_id, :bigint
  end
end
