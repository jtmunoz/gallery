class Gallery < ApplicationRecord
	belongs_to :owner,foreign_key: :owner_id
	has_many :photos
end
