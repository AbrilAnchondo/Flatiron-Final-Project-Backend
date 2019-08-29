class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :following, foreign_key: true
      t.integer :maker_id
      t.integer :receiver_id
      t.string :content

      t.timestamps
    end
  end
end
