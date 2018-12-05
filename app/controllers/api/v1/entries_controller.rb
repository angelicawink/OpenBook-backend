class Api::V1::EntriesController < ApplicationController
  before_action :find_entry, only: [:show, :update]

  def index
    @entries = Entry.all
    render json: @entries
  end

  def show
    render json: @entry
  end

  def create
    render json: Entry.create(entry_params)
  end

  def update
    if @entry.save
      @entry.update(entry_params)
      render json: @entry
    else
      render json: { errors: @entry.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:content, :user_id, :private)
  end

  def find_entry
    @entry = Entry.find(params[:id])
  end

end
