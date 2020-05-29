class CustomersController < ApplicationController
    def index
        @customers = Customer.all
    end

    def new
        @customer = Customer.new
    end

    def create
        @customer = Customer.create(customer_params)
        if @customer.valid?
            flash[:success] = "Customer Created"
            redirect_to new_order_path
        else
            flash[:errors] = @customer.errors.full_messages
            redirect_to new_customer_path
        end
    end

    def edit

    end

    def update

    end

    def show
        @customer = Customer.find(params[:id])
    end

    def destroy

    end

    private

    def customer_params
        params.require(:customer).permit(:name)
    end
end
