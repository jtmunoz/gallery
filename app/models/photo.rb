class Photo < ApplicationRecord
  belongs_to :gallery
  acts_as_votable
end
