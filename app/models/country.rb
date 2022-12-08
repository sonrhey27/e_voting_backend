class Country < ApplicationRecord
  before_create :set_uuid

  has_many :region, dependent: :delete_all
  def set_uuid
    self.uuid = SecureRandom.uuid
  end
end
