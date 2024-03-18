class Customer < ApplicationRecord
  has_one_attached :image

  validates :fullname, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ['created_at', 'email', 'fullname', 'id', 'notes','phone','updated_at']
  end
end
