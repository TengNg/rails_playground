class Comment < ApplicationRecord
  belongs_to :article

  # validates :title, presence: true
  validates :body, length: { maximum: 10 }

  # // update_column
  # // update_columns
  # // save(validate: false)

end
