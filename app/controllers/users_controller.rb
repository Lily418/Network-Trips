class UsersController < ApplicationController
    def create
        user = User.create(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
        if user.errors.any?
            flash["error"] = []
            user.errors.full_messages.each do |message|
                flash["error"] << message
            end
            add_params_to_flash
            flash["previous_action"] = "UsersController.create"
        else
            Place.find(params[:placeId]).users << user unless params[:placeId].nil?
            login user.id
        end

        redirect_to request.referer
    end
end
