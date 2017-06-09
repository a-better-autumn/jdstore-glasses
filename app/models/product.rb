class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :category
  validates :title, presence: true

  has_many :photos
  accepts_nested_attributes_for :photos
end
