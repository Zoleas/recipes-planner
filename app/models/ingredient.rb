class Ingredient < ApplicationRecord
  has_and_belongs_to_many :months
  has_and_belongs_to_many :ingredient_categories, as: :categories
end
