class RemoveFollowingFromMessages < ActiveRecord::Migration[5.2]
  def change
    remove_reference :messages, :following, foreign_key: true
  end
end
