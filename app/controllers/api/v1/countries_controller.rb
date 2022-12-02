class Api::V1::CountriesController < ApplicationController
  def index
    countries = Country.all.order(id: :desc)
    render json: countries, type: :country_list
  end

  def create
    country = Country.new(country_params)
    country.save
    render json: country, type: :country_list
  end

  def update
    country = Country.find_by! uuid: params[:id]
    country.update! country_params

    render json: country, type: :country_list
  end

  def destroy
    country = Country.find_by! uuid: params[:id]
    country.destroy

    render json: 'Data Deleted Succesfully!'
  end

  private

  def country_params
    params.permit(:code, :name)
  end
end
