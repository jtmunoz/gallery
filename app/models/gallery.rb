class Gallery < ApplicationRecord
	belongs_to :owner,foreign_key: :owner_id, source: :user
	has_many :photos
end
