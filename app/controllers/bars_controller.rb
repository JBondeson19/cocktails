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
        @bar.update(name: params[:bar][:name],
                    location: params[:bar][:location])
        redirect_to bars_path(bars)
    end

    def new
    end

    def create
    end
    
    def destroy
    end

    private 

    def find_bar
        @bar = Bar.find(params[:id])
    end

    def bar_params

    end
end
