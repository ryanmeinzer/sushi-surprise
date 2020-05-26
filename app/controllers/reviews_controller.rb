class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
    end

    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        if @review.valid?
            flash[:success] = "Review Created"
            redirect_to review_path(@review)
        else
            flash[:errors] = @review.errors.full_messages
            redirect_to new_review_path
        end
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update
        @review = Review.find(params[:id])
        @review.update(review_params)
        redirect_to review_path(@review)
    end

    def show
        @review = Review.find(params[:id])
    end

    def destroy

    end

    private

    def review_params
        params.require(:review).permit(:customer_id, :sushi_id, :rating)
    end
end
