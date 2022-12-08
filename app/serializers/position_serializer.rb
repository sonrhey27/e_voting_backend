class PositionSerializer < ActiveModel::Serializer
  attributes :uuid, :name, :id

  POSITION_LIST = {
    position: %i(uuid name id)
  }.freeze
end
