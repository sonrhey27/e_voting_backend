class PositionSerializer < ActiveModel::Serializer
  attributes :uuid, :name

  POSITION_LIST = {
    position: %i(uuid name)
  }.freeze
end
