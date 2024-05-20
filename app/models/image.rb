class Image < ApplicationRecord
    acts_as_paranoid
    belongs_to :imageable, polymorphic: true
end
