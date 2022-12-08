class VotingCountSerializer < ActiveModel::Serializer
  attributes :position_id, :candidate_id

  VOTING_SUCCESS = {
    voting: %i(position_id candidate_id)
  }
end
