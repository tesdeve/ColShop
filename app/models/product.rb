class Product < ApplicationRecord

  has_one_attached :image
  has_many :line_items

  validates :title, :price, :stock_quantity, presence: true
  validates :title, uniqueness: true
  validates_numericality_of :price
  validates :stock_quantity, numericality: { only_integer: true }

  # Private methods validations
  validate :correct_image_type
  before_destroy :ensure_not_referenced_by_any_line_item

  private
    def correct_image_type
      if image.attached? && !image.content_type.in?(%w(image/jpeg image/png))
        errors.add(:image, ' - The photo format must be JPEG or PNG')
      # if I want to make a picture mandatory add this part
      #elsif image.attached? == false
        #errors.add(:image, '- You must add a photo with JPEG or PNG format ')    
      end
    end

    # ensure that there are no line items referencing this product​
    def ensure_not_referenced_by_any_line_item
      unless line_items.empty?
        erros.add(:base, 'Line Items present')
        throw :abort
      end
    end
 
end










        