class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def current_user
      @user = User.get_user_from_user_id(session[:current_user_id])
  end

  def user_can_go_on_trip trip
      return !current_user.nil? && !Ticket.find_by(trip_id: trip.id, user_id: current_user.id).nil?
  end

  def login user_id
      session[:current_user_id] = user_id
  end

  helper_method :current_user
end
