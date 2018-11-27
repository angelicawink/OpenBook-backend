class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]


  def create # POST /api/v1/login
    @user = User.find_by(username: user_login_params[:username])
    #User#authenticate comes from BCrypt
    if @user && @user.authenticate(user_login_params[:password])
      # encode token comes from ApplicationController
      payload = { user_id: @user.id }
      token = encode_token(payload)

      render json: {
        user_info: UserSerializer.new(@user),
        jwt: token },
        status: :accepted
    else
      render json: { error: true,
         error_message: 'Invalid username or password' }, status: :unauthorized
    end

  end

  private

  def user_login_params
    # params { user: {username: 'Chandler Bing', password: 'hi' } }
    params.require(:user).permit(:username, :password)
  end



end
