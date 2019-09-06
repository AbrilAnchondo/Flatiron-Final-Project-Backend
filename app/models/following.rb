class Following < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: :user_id
  belongs_to :species, class_name: "Species", foreign_key: :species_id
  
  
end
