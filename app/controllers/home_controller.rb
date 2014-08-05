class HomeController < ApplicationController
    def index
        @trip = Trip.first
        @users = @trip.users
        @comments = @trip.comments.order(priorty: :desc, created_at: :desc).limit(5)
    end
end
