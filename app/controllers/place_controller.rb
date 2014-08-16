class PlaceController < ApplicationController
    def increment
        @liketogo = Liketogo.create(user: current_user, place_id: params[:place_id])
        if !@liketogo.errors.any?
            place = Place.find(params[:place_id])
            place.count += 1
            place.save
        end
        render json: @liketogo.errors.any? ? false : true
    end
end
