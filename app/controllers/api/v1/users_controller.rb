class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    render json: users, type: :user_list
  end

  def create
    user = User.new(user_params)
    user.save
    render json: user, type: :user_list
  end

  def update
    user = User.find_by! uuid: params[:id]
    user.update user_params
    render json: user, type: :user_list
  end

  def destroy
    user = User.find_by! uuid: params[:id]
    user.destroy
    render json: "Data Deleted Successfuly!"
  end

  def login
    user = User.find_by! email_adress: params[:email_adress]
    if user && user.authenticate(params[:password]) 
      render json: user, type: :user_list
    else
      render json: { user: "Wrong email or password" }
    end
  end

  private

  def user_params
    params.permit(:name, :country_id, :region_id, :municipality_id, :email_adress, :password)
  end
end
