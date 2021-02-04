class AuthController < ApplicationController

    protect_from_forgery unless: -> { request.format.json? }

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      
      render json:  user
    else
      render json: { error: 'Email or Password does not exist.'}
    end



  end
end