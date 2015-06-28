class Photo < ActiveRecord::Base
  belongs_to :user
	belongs_to :comic
	has_many :photo_assets
	has_one :audio_asset



  validates :image_url, presence: true

end
