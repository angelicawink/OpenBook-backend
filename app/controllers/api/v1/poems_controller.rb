class Api::V1::PoemsController < ApplicationController
  before_action :find_poem, only: [:show, :update]

  def index
    @poems = Poem.all
    render json: @poems
  end

  def show
    render json: @poem
  end

  def create
    render json: Poem.create(poem_params)
  end

  def update
    if @poem.save
      @poem.update(poem_params)
    else
      render json: { errors: @poem.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def poem_params
    params.require(:poem).permit(:content, :user_id, :title)
  end

  def find_poem
    @poem = Poem.find(params[:id])
  end


end
