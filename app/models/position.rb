class Position < ApplicationRecord
  before_create :set_uuid

  has_many :candidate, dependent: :delete_all

  def set_uuid
    self.uuid = SecureRandom.uuid
  end
end
