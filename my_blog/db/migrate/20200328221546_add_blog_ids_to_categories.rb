class AddBlogIdsToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :blog_id, :integer
  end
end
