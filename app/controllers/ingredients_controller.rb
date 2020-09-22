class IngredientsController < ApplicationController

    before_action :find_ingredients, only: [:show, :edit, :update, :destroy]

    def index
        @ingredients = Ingredient.all
    end
    
    def show
    end

    def edit
    end
    
    def update
        @ingredient.update(ingredient_params)
        redirect_to ingredient_path(@ingredient)
    end

    def new
        @ingredient = Ingredient.new
    end

    def create
        @ingredient = Ingredient.new(ingredient_params)
        @ingredient.save
        redirect_to ingredients_path(@ingredient)
    end
    
    def destroy
        Ingredient.destroy(params[:id])
        redirect_to ingredients_path
    end

    private 

    def find_ingredients
        @ingredient = Ingredient.find(params[:id])
    end

    def ingredient_params
       params.require(:ingredient).permit(:name, :quantity, :measurement, cocktail_ids:[])
    end
end
