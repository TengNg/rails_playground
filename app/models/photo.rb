class Photo < ApplicationRecord
  has_one :image, as: :imageable
end