class Article < ApplicationRecord
  has_many :comments
  # validates :title, presence: true
  # validates :body, presence: true, length: { minimum: 10 }
  # default_scope { where('title like ?', "%Article%") }
  # scope :title_is_post_1, -> { where(title: 'Post 1') }

  # validates :body, presence: true, if: -> { title != "text" }, on: :update

  # before_save :puts_msg

  before_create :raise_ex

  # def puts_msg
  #   puts "Article saved"
  # end

  def raise_ex
    raise "Abcd"
  end

  # create object
  #
  # before_validation
  # after_validation
  # before_save
  # around_save
  # before_create
  # after_create
  # after_save
  # after_commit

end
