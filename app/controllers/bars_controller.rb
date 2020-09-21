class BarsController < ApplicationController
    
    before_action :find_bar, only: [:show, :edit, :update, :destroy]

    def index
        @bars = Bar.all
    end
    
    def show
    end

    def edit
    end
    
    def update
        @bar.update(bar_params)
        redirect_to bar_path(@bar)
    end

    def new
        @bar = Bar.new
    end

    def create
        @bar = Bar.new(bar_params)
        @bar.save
        redirect_to bars_path(@bar)
    end
    
    def destroy
        Bar.destroy(params[:id])
        redirect_to bars_path
    end

    private 

    def find_bar
        @bar = Bar.find(params[:id])
    end

    def bar_params
        params.require(:bar).permit(:name, :location, cocktail_ids:[])
    end
end
