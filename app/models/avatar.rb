class Avatar < ApplicationRecord
  has_one :image, as: :imageable
end
