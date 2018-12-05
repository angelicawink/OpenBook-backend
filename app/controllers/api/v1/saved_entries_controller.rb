class Api::V1::SavedEntriesController < ApplicationController
  before_action :find_saved_entry, only: [:show, :update, :destroy]

  def index
    @saved_entries = SavedEntry.all
    render json: @saved_entries
  end

  def show
    render json: @saved_entry
  end

  def create
    render json: SavedEntry.create(saved_entry_params)
  end

  def update
    if @saved_entry.save
      @saved_entry.update(saved_entry_params)
      render json: @saved_entry
    else
      render json: { errors: @saved_entry.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @saved_entry.destroy

    render json: @saved_entry
  end

  private

  def saved_entry_params
    params.require(:saved_entry).permit(:user_id, :entry_id, :title)
  end

  def find_saved_entry
    @saved_entry = SavedEntry.find(params[:id])
  end


end
