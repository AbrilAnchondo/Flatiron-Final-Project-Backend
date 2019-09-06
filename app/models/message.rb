class Message < ApplicationRecord
  belongs_to :following
  belongs_to :maker, class_name: "User", foreign_key: :maker_id
  belongs_to :receiver, class_name: "User", foreign_key: :receiver_id

  
  

end
