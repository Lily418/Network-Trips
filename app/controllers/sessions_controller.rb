class SessionsController < ApplicationController
  def new
  end

  def create
      user = User.find_by(email: params[:email].downcase)
      if user && user.authenticate(params[:password])
          session[:current_user_id] = user.id
          redirect_to request.referer
      else
          render plain: "Incorrect Username or Password"
      end
  end

  def destroy
  end
end
