class Book < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :title, :category_id, presence: true
  mount_uploader :image, ImageUploader
end
