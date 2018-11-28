class Api::V1::MomentsController < ApplicationController
  before_action :find_moment, only: [:show, :update]

  def index
    @moments = Moment.all
    render json: @moments
  end

  def show
    render json: @moment
  end

  def create
    render json: Moment.create(moment_params)
  end

  def update
    if @moment.save
      @moment.update(moment_params)
    else
      render json: { errors: @moment.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def moment_params
    params.require(:moment).permit(:user_id, :feeling_id, :setting_id)
  end

  def find_moment
    @moment = Moment.find(params[:id])
  end

end
