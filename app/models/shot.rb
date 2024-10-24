class Shot < ApplicationRecord
  belongs_to :user
  
  has_one_attached :shot_image
  
  validates :title, presence: true
  validates :description, presence: true
end
