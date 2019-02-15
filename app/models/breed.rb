class Breed < ApplicationRecord
  has_many :dogs

  validates :name, :description, presence: true
end
