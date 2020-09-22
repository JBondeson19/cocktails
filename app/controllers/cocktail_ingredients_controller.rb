class CocktailIngredientsController < ApplicationController

    def update
        cocktail_ingredient = CocktailIngredient.find(params[:id])
        cocktail_ingredient.update(ci_params)
        redirect_to(cocktail_path(cocktail_ingredient.cocktail_id))
    end

    private 

    def ci_params
        params.require(:cocktail_ingredient).permit(:cocktail_id, :ingredient_id, :quantity)
    end
end
