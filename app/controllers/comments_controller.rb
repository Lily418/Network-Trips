class CommentsController < ApplicationController
    def create
        reply_to = params[:reply_to]
        if reply_to.nil?
            trip = Trip.find_by(id: params[:trip])
            abort if !user_can_go_on_trip trip
            trip.comments << Comment.create(user: current_user, comment: params[:comment])
        else
            comment = Comment.find_by(id: reply_to)
            abort if !user_can_go_on_trip comment.trip
            comment.comments << Comment.create(user: current_user, comment: params[:reply])
        end
        redirect_to request.referer
    end
end
