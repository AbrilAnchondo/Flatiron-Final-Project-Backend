class AddGroupToSpecies < ActiveRecord::Migration[5.2]
  def change
    add_column :species, :group, :string
  end
end
