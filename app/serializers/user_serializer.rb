class UserSerializer < ActiveModel::Serializer
  attributes :uuid, :name, :email_adress

  USER_LIST = {
    user: %i(uuid name email_adress)
  }
end
