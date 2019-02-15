class Owner < ApplicationRecord

  validates :name, :address, :profile_photo, presence: true
  validates :phone, length: { maximum: 10 }, presence: true
  has_many :dogs
end
