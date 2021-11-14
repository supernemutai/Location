class Post < ApplicationRecord
  belongs_to :user
  # has_many :favorites, dependent: :destroy
  has_many :maps, dependent: :destroy
  # has_many :posttags, dependent: :destroy
  
  attachment :image
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end