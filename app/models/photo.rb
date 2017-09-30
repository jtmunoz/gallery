class Photo < ApplicationRecord
  belongs_to :gallery
  belongs_to :curator; through :gallery; foreign_key: :user_id
end
