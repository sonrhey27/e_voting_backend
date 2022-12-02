class CountrySerializer < ActiveModel::Serializer
  attributes :uuid, :id, :code, :name

  COUNTRY_LIST = {
    country: %i(id uuid code name)
  }.freeze
end
