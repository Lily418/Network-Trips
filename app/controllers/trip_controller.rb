class TripController < ApplicationController
    def trip_page
        @trip = Trip.find_by(page_name: params[:page_name])
        @users = @trip.users
        @has_ticket = user_can_go_on_trip @trip
        @comments = @trip.comments
    end
end
