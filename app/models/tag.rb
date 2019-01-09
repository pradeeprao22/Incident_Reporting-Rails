class Tag < ApplicationRecord
    has_many :taggings
    has_many :detaileds, through: :taggings
end
