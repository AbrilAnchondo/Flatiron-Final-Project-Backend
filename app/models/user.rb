class User < ApplicationRecord
    has_many :m, class_name: "Comment", foreign_key: :receiver_id
    has_many :r, class_name: "Comment", foreign_key: :maker_id

    has_many :makers, through: :m 
    has_many :receivers, through: :r

    has_secure_password

    has_many :followings 
    has_many :species, through: :followings

    validates_presence_of :username
    validates_uniqueness_of :username, :case_sensitive => false

end
