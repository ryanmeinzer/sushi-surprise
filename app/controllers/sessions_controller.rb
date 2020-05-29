class SessionsController < ApplicationController

    def reset_session
        cookies[:sushi_counter] = 0
        cookies[:order_counter] = 0
        redirect_back fallback_location: sushis_path
    end

end