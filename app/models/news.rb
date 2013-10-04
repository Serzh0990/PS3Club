class News < ActiveRecord::Base
  
  mount_uploader :image, ImageUploader
  
  validates :title, :description, presence: true
  validates :title, uniqueness: true
end
