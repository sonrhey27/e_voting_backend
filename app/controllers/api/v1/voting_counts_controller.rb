class Api::V1::VotingCountsController < ApplicationController
  def index
    # countries = Country.all
    render json: {status: 'Saving Success', message: 'Loaded Countries', data: 'votingcount'}, status: :ok
  end
end
