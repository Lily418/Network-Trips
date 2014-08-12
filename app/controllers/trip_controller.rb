class TripController < ApplicationController
    def trip_page
        @trip = Trip.find_by(page_name: params[:page_name])
        @users = @trip.users
    end
end
