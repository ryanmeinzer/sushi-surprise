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
        cookies[:sushi_counter] = cookies[:sushi_counter].to_i + 1
        @sushi = Sushi.find(params[:id])
    end

    def destroy

    end

    def reset

    end
    
end
