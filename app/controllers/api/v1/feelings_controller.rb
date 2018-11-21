class Api::V1::FeelingsController < ApplicationController
  before_action :find_feeling, only: [:show, :update]

  def index
    @feelings = Feeling.all
    render json: @feelings
  end

  def show
    render json: @feeling
  end

  def create
    render json: Feeling.create(feeling_params)
  end

  def update
    if @feeling.save
      @feeling.update(feeling_params)
    else
      render json: { errors: @feeling.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def feeling_params
    params.require(:feeling).permit(:name, :rank)
  end

  def find_feeling
    @feeling = Feeling.find(params[:id])
  end

end
