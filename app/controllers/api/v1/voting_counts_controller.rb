class Api::V1::VotingCountsController < ApplicationController
  def create
    vote = VotingCount.new(voting_params)
    vote.save
    render json: vote, type: :voting_success
  end

  def vote_count
    conditions = {}

    if !params[:country_id].blank?
      conditions[:country_id] = params[:country_id]
    end

    if !params[:region_id].blank?
      conditions[:region_id] = params[:region_id]
    end

    if !params[:municipality_id].blank?
      conditions[:municipality_id] = params[:municipality_id]
    end

    vote = VotingCount.where(conditions).group(:candidate_id).sum(:vote)

    render json: vote
  end

  private

  def voting_params
    params.permit(:candidate_id, :vote, :country_id, :region_id, :municipality_id, :user_id, :position_id)
  end
end
