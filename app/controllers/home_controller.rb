class HomeController < ApplicationController
    def index
        @users = Trip.first.users
    end
end
