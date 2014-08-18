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

  def add_params_to_flash
      flash["params"] = params.except(:password, :password_confirmation)
  end

  def text_field_tag_helper(name, default_text=nil, options ={})
     default_text = flash["params"][name.to_s] unless default_text != nil || flash["params"].nil? || flash["params"][name.to_s].nil? 
     view_context.text_field_tag(name, default_text, options)
  end

  helper_method :current_user
  helper_method :text_field_tag_helper
end
