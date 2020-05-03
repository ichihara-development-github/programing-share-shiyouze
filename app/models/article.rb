class Article < ApplicationRecord

  def self.search(free_search)
        if free_search
            Article.where("title LIKE ? OR content LIKE ?", "%#{free_search}%", "%#{free_search}%")
        else
            all
        end
   end
  has_many :article_categories
  has_many :categories, through: :article_categories
end
