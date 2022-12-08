class Candidate < ApplicationRecord
  before_create :set_uuid

  belongs_to :position

  def set_uuid
    self.uuid = SecureRandom.uuid
  end
end
