class CreateJoinTableIngredientsIngredientCategories < ActiveRecord::Migration[5.2]
  def change
    create_join_table :ingredients, :ingredient_categories do |t|
      # t.index [:ingredient_id, :ingredient_category_id]
      # t.index [:ingredient_category_id, :ingredient_id]
    end
  end
end
