class Owner < ApplicationRecord

  validates :name, :address, :phone, presence: true
  has_many :dogs
end
