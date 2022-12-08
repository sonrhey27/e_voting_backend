class Api::V1::CandidatesController < ApplicationController
  def index
    candidates = Candidate.all.order(id: :desc)
    render json: candidates, type: :candidate_list
  end

  def create
    candidate = Candidate.new(candidate_params)
    candidate.save
    render json: candidate, type: :candidate_list
  end

  def update
    candidate = Candidate.find_by! uuid: params[:id]
    candidate.update candidate_params
    render json: candidate, type: :candidate_list
  end

  def destroy
    candidate = Candidate.find_by! uuid: params[:id]
    candidate.destroy
    render json: "Candidate is Deleted successfuly!"
  end

  private

  def candidate_params
    params.permit(:position_id, :name)
  end
end
