class Category < ApplicationRecord
  belongs_to :blog
  has_many :blogs
end
