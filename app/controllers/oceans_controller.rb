class OceansController < ApplicationController
    def index
        @oceans = Ocean.all
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
        @ocean = Ocean.find(params[:id])
    end

    def destroy

    end
end
