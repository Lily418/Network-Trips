class SessionsController < ApplicationController
  def create
      user = User.find_by(email: params[:email].downcase)
      if user && user.authenticate(params[:password])
          login user.id
          redirect_to request.referer
      else
          render plain: "Incorrect Username or Password"
      end
  end

  def delete
      reset_session
      redirect_to request.referer
  end
end
