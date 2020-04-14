class RemoveBlogsIdFormCategories < ActiveRecord::Migration[5.1]
  def change
    remove_column :categories, :blog_id, :string
  end
end
