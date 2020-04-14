class RemoveArticleIdFromCategories < ActiveRecord::Migration[5.1]
  def change
    remove_column :articles, :category_id, :integer
    remove_column :categories, :article_id, :integer
  end
end
