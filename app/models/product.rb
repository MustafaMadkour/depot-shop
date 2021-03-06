class Product < ApplicationRecord
  validates :title, :description, :img_url, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :title, uniqueness: true
  validates :img_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'You must provide GIF, JPG or PNG image'
  }
end
