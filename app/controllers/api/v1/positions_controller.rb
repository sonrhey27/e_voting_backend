class Api::V1::PositionsController < ApplicationController
  def index
    positions = Position.all
    render json: positions, type: :position_list
  end

  def create
    position = Position.new(position_params)
    position.save
    render json: position, type: :position_list
  end

  def update
    position = Position.find_by! uuid: params[:id]
    position.update position_params
    render json: position, type: :position_list
  end

  def destroy
    position = Position.find_by! uuid: params[:id]
    position.destroy

    render json: 'Data Deleted Succesfully!'
  end

  private

  def position_params
    params.permit(:name)
  end
end
