class Comment < ApplicationRecord
  acts_as_paranoid
  belongs_to :product

  has_many :images, as: :imageable
end
