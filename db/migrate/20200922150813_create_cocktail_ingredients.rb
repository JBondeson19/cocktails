class CreateCocktailIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktail_ingredients do |t|
      t.belongs_to :cocktail
      t.belongs_to :ingredient

      t.timestamps
    end
  end
end
