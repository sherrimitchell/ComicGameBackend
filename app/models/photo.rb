class Photo < ActiveRecord::Base
	IMAGE_REGEX = /\Ahttps?:\/\/(?:[a-zA-z0-9\-]+\.)+[a-z]{2,20}(?:\/[^\/#?]+)+\.(?:jpg|gif|png)\z/
	belongs_to :comic
	has_many :photo_assets
	has_one :audio_asset

  validates :username, presence: true

  validates :image_url, presence: true
  validates :image_url, format: { with: IMAGE_REGEX,
                                  message: "not a valid url for an image"}
end
