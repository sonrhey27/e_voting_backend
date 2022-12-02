class MunicipalitySerializer < ActiveModel::Serializer
  attributes :uuid, :region_id, :code, :name

  MUNICIPALITY_LIST = {
    municipality: %i(uuid region_id code name)
  }.freeze
end
