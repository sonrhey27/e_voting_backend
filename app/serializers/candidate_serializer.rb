class CandidateSerializer < ActiveModel::Serializer
  attributes :uuid, :name

  CANDIDATE_LIST = {
    candidate: %i(uuid name)
  }.freeze
end
