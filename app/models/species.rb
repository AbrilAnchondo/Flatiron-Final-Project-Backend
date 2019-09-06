class Species < ApplicationRecord
    has_many :followings
    has_many :users, through: :followings

    has_many :comments, dependent: :destroy
    has_many :users, through: :comments
end
