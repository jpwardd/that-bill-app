class SessionsController < ApplicationController
  include CurrentUserConcern
  def create
    email = params['email']
    password = params['password']
    user = User.find_by(email: email).try(:authenticate, password)
    
    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        authenticated: true,
        user: user
      }
    else
      render json: { status: 401 }
    end
  end

  def logged_in
    if @current_user
      render json: {
        logged_in: true,
        user: @current_user
      }
    else
      render json: {
        logged_in: false
      }
    end
  end

  def logout
    reset_session
    render json: { status: 200, logged_out: true }
  end
end