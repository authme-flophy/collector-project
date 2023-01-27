class SessionsController < ApplicationController
  skip_before_action :authenticate_request, only: [:create]


  def create
    user = User.find_by(username: params[:username])

    if user&.authenticate(params[:password])
      token = jwt_encode(user_id: user.id)
      render json: { user: user, token: token }, status: :ok
    else
      render json: { error: user.errors.full_messages }, status: :unauthorized
    end

  end

end
