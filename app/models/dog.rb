class Dog < ApplicationRecord

  paginates_per 20

  validates :name, :image_url, presence: true

  belongs_to :breed
  belongs_to :owner
end
