class SushisController < ApplicationController

    def index
        @sushis = Sushi.all
    end

    def new

    end

    def create

    end

    def edit

    end

    def update

    end

    def show
        @sushi = Sushi.find(params[:id])
    end

    def destroy

    end
    
end
