class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :description
      t.string :image
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
