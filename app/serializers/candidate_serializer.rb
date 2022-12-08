class CandidateSerializer < ActiveModel::Serializer
  attributes :id, :uuid, :name, :position_name, :position_id

  def position_name
    object.position.name
  end

  CANDIDATE_LIST = {
    candidate: %i(id uuid name position_name position_id)
  }.freeze
end
