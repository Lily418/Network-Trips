class HomeController < ApplicationController
    def index
        @trip = Trip.first
        @users = @trip.users
        @comments = @trip.comments.order(priorty: :desc, created_at: :desc).limit(5)
        @places = Place.all.limit(3)
    end

    def trip_page
        @trip = Trip.find_by(page_name: params[:page_name])
        @users = @trip.users
    end
end
