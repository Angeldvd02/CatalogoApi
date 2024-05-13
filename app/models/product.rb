class Product < ApplicationRecord
  acts_as_paranoid
  belongs_to :category
  has_many :comments, dependent: :destroy
  has_many :images, as: :imageable
end
