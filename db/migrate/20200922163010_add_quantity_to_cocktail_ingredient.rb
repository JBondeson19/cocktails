class AddQuantityToCocktailIngredient < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktail_ingredients, :quantity, :float
  end
end
