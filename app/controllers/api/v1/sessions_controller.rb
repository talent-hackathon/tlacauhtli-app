class Api::V1::SessionsController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    user = User.where(email: params[:email]).first

    if user.valid_password?(params[:password])
      render json: user.as_json(only: [:email, :role]), status: :created
    else
      head(:unauthorized)
    end
  end
  
  def destroy
    
  end
  


end