class Comic < ActiveRecord::Base
	IMAGE_REGEX = /\Ahttps?:\/\/(?:[a-zA-z0-9\-]+\.)+[a-z]{2,20}(?:\/[^\/#?]+)+\.(?:jpg|gif|png)\z/
	belongs_to :user
	has_many :photos

  validates :user_id, presence: true

  validates :comic_url, presence: true
  validates :comic_url, format: { with: IMAGE_REGEX, 
                                  message: "not a valid url for a comic"}
end
