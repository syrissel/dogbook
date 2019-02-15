class Dog < ApplicationRecord

  paginates_per 20

  validates :name, :image_url, :description, presence: true
  validates :age, numericality: { only_integer: true }, presence: true

  belongs_to :breed
  belongs_to :owner
end
