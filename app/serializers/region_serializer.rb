class RegionSerializer < ActiveModel::Serializer
  attributes :uuid, :country_id, :code, :name, :id

  REGION_LIST = {
    region: %i(id uuid country_id code name)
  }.freeze
end
