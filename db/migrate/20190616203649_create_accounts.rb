class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :uid
      t.string :icon_url
      t.integer :progress
      t.string :like_name
      t.string :known_name

      t.timestamps
    end
  end
end
