class User < ApplicationRecord
    has_many :m, class_name: "Message", foreign_key: :receiver_id
    has_many :r, class_name: "Message", foreign_key: :maker_id

    has_many :makers, through: :m 
    has_many :receivers, through: :r

    has_secure_password

    has_many :followings 
    has_many :species, through: :followings

    has_many :comments, dependent: :destroy
    has_many :species, through: :comments

    validates_presence_of :username
    validates_uniqueness_of :username, :case_sensitive => false

end
