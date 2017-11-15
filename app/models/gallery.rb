class Gallery < ApplicationRecord
	belongs_to :user
	has_many :photos

	def first_photo
		photos.first.url
	end
end
