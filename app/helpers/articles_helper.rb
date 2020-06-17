# frozen_string_literal: true

module ArticlesHelper
  def article_properties(category)
    properties_hash = if category.articles.count.zero?
                        { image: 'default', title: '', link: '#' }
                      else
                        { image: category.articles.recent.first.image,
                          title: category.articles.recent.first.title,
                          link: category.articles.recent.first }
                      end
    properties_hash
  end

  def owner?(autor_id)
    current_user && autor_id == current_user.id
  end
end
