class RenameMyTable < ActiveRecord::Migration[5.2]
  def change
    rename_table :comments, :messages
  end
end
