class SessionsController < ApplicationController
  def create
      user = User.find_by(email: params[:email].downcase)
      if user && user.authenticate(params[:password])
          login user.id
      else
          add_params_to_flash
          flash["error"] = ["Incorrect Email or Password"]
          flash["previous_action"] = "SessionsController.create"
      end
          redirect_to request.referer
  end

  def delete
      reset_session
      redirect_to request.referer
  end
end
