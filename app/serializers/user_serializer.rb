class UserSerializer < ActiveModel::Serializer
  attributes :id, :uuid, :name, :email_adress, :country_id, :region_id, :municipality_id, :user_type

  USER_LIST = {
    user: %i(id uuid name email_adress country_id region_id municipality_id user_type)
  }
end
