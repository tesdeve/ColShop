class Product < ApplicationRecord

  has_one_attached :image

  validates :title, :price, :stock_quantity, presence: true
  validates :title, uniqueness: true

end
