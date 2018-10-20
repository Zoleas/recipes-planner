class CreateJoinTableIngredientsMonths < ActiveRecord::Migration[5.2]
  def change
    create_join_table :ingredients, :months do |t|
      # t.index [:ingredient_id, :month_id]
      # t.index [:month_id, :ingredient_id]
    end
  end
end
