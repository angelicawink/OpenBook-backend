class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show, :moments, :entries, :update]
  skip_before_action :authorized, only: [:create]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def update
    if @user.save
      @user.update(user_params)
      render json: {user_info: UserSerializer.new(@user)}, status: :accepted
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end


  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user_info: UserSerializer.new(@user), jwt: @token}, status: :created
    else
      render json: {error: 'failed to create user'}, status: :not_acceptable
    end
  end

  def moments
    render json: @user.moments
  end


  def entries
    render json: @user.entries
  end

  #
  # def verify
  #   @user = User.find_by_username(params[:name])
  #
  #   if @user
  #     render json: @user
  #   else
  #     render json: 'alert: wrong username'
  #   end
  # end




  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
