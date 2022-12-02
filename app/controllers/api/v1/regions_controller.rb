class Api::V1::RegionsController < ApplicationController
  def index
    regions = Region.all
    render json: regions, type: :region_list
  end

  def create
    region = Region.new(region_params)
    region.save
    render json: region, type: :region_list
  end

  def update
    region = Region.find_by! uuid: params[:id]
    region.update! region_params

    render json: region, type: :region_list
  end

  def destroy
    region = Region.find_by! uuid: params[:id]
    region.destroy

    render json: 'Data Deleted Succesfully!'
  end

  private

  def region_params
    params.permit(:country_id, :code, :name)
  end
end
