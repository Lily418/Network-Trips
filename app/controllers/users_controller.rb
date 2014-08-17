class UsersController < ApplicationController
    def create
        user = User.create(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
        if user.errors.any?
            user.errors.full_messages.each_with_index do |message, index|
                flash[index] = message
            end
        else
            Place.find(params[:placeId]).users << user unless params[:placeId].nil?
            login user.id
        end

        redirect_to request.referer
    end
end
