class Photo < ApplicationRecord
  belongs_to :gallery
  belongs_to :user, class_name: :Gallery, foreign_key: :user_id
end
