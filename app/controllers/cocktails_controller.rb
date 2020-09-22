class CocktailsController < ApplicationController

    before_action :find_cocktail, only: [:show, :edit, :update, :destroy] #makes it so at the beginning of all four of these methods, find_cocktail is ran (see private method)

    def index
        @cocktails = Cocktail.all
    end
    
    def show
        #find_cocktail does the work for us - don't have to write any code here!
    end

    def edit
    end
    
    def update
        @cocktail.update(cocktail_params) #see our private method
        redirect_to(cocktail_path(@cocktail))
    end

    def new
        @cocktail = Cocktail.new
    end

    def create
        cocktail = Cocktail.create(cocktail_params) #see our private method
        redirect_to(cocktail_path(cocktail))
    end

    def create_drink
        @cocktail = Cocktail.new(cocktail_params)
        render :create_drink
    end
    
    def destroy
        @cocktail.destroy
        redirect_to(cocktails_path)
    end

    def edit_drink

    end

    private 

    def cocktail_params
        params.require(:cocktail).permit(:name, :price, :description, bar_ids:[], ingredient_ids:[])
    end

    def find_cocktail
        @cocktail = Cocktail.find(params[:id])
    end
end
