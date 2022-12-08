class MunicipalitySerializer < ActiveModel::Serializer
  attributes :uuid, :region_id, :code, :name, :id

  MUNICIPALITY_LIST = {
    municipality: %i(uuid region_id code name id)
  }.freeze
end
