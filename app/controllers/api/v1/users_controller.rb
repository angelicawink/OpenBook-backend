class Api::V1::UsersController < ApplicationController

  before_action :find_user, only: [:show, :moments, :entries]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    render json: User.create(user_params)
  end

  def moments
    render json: @user.moments
  end

  def entries
    render json: @user.entries
  end

  def verify
    @user = User.find_by_username(params[:name])

    if @user
      render json: @user.id
    else
      render json: 'alert: wrong username'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
