class IngredientCategoriesController < ApplicationController
  def index
    @categories = IngredientCategory.includes(:ingredients).map do |category|
      { id: category.id, name: category.name, ingredients_count: category.ingredients.count }
    end
  end

  def show
    @category = IngredientCategory.includes(:ingredients).find(params[:id])
    @other_ingredients = Ingredient.where.not(id: @category.ingredients.map(&:id))
  end

  def new
    @category = IngredientCategory.new
  end

  def edit
    @category = IngredientCategory.includes(:ingredients).find(params[:id])
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

  def update
    @category = IngredientCategory.find(params[:id])
    if @category.update(category_params)
      redirect_to ingredient_categories_path, flash: { success: 'Modification enregistrée' }
    else
      redirect_to edit_ingredient_category_path(@category), flash: { error: @category.errors.full_messages.to_sentence }
    end
  end

  def destroy
    IngredientCategory.find(params[:id]).destroy
    redirect_to ingredient_categories_path
  end

  def add_ingredient
    category = IngredientCategory.find(params[:id])
    category.ingredients << Ingredient.find(params[:ingredient_id])
    category.save
    redirect_to ingredient_category_path(category), flash: { success: 'Ingrédient ajouté' }
  end

  def remove_ingredient
    category = IngredientCategory.find(params[:id])
    category.ingredients.delete(params[:ingredient_id])
    category.save
    redirect_to ingredient_category_path(category), flash: { success: 'Ingrédient retiré' }
  end

  private

  def category_params
    params.require(:ingredient_category).permit(:name, :text)
  end
end
