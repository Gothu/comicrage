class Book < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :title, :category_id, presence: true
  mount_uploader :image, ImageUploader
  before_destroy :remove_image

  private

  def remove_image
    image.remove!
    image.thumb.remove! # サムネイルを持っていない場合は不要
  rescue Exception => e
    logger.error(e.message)
  end
end
