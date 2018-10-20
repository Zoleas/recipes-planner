class IngredientCategoriesController < ApplicationController
  def index
    @categories = IngredientCategory.includes(:ingredients).map do |category|
      { name: category.name, ingredients_count: category.ingredients.count }
    end
  end

  def new
    @category = IngredientCategory.new
  end

  def create
    category = IngredientCategory.create(category_params)
    if category.valid?
      redirect_to new_ingredient_category_path, flash: { success: "Catégorie #{category.name} ajoutée :)"}
    else
      # flash[:error] = category.errors.full_messages.to_sentence
      redirect_to new_ingredient_category_path, flash: { error: category.errors.full_messages.to_sentence }
    end
  end

  private

  def category_params
    params.require(:ingredient_category).permit(:name, :text)
  end
end
