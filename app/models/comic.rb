class Comic < ActiveRecord::Base

	belongs_to :user
	has_many :photos

  # validates :username, presence: true

  validates :comic_url, presence: true
end
