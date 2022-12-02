class Api::V1::MunicipalitiesController < ApplicationController
  def index
    municipalities = Municipality.all
    render json: municipalities, type: :municipality_list
  end

  def create
    municipality = Municipality.new(municipality_params)
    municipality.save
    render json: municipality, type: :municipality_list
  end

  def update
    municipality = Municipality.find_by! uuid: params[:id]
    municipality.update! municipality_params

    render json: municipality, type: :municipality_list
  end

  def destroy
    municipality = Municipality.find_by! uuid: params[:id]
    municipality.destroy

    render json: 'Data Deleted Succesfully!'
  end

  private

  def municipality_params
    params.permit(:region_id, :code, :name)
  end
end
