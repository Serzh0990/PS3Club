class News < ActiveRecord::Base
  extend FriendlyId
    friendly_id :title, use: [:slugged, :history]
    
  mount_uploader :image, ImageUploader
  
  validates :title, :description, presence: true
  validates :title, uniqueness: true
  
  
    
    def should_generate_new_friendly_id?
        new_record?
      end
end
