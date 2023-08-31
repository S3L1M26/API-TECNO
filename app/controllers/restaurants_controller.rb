class RestaurantsController < JSONAPI::ResourceController
    skip_before_action :verify_authenticity_token
    def destroy
        @restaurant = Restaurant.find(params[:id])
        @restaurant.destroy
    end
    
end
