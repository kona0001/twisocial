class CreateAnswer2s < ActiveRecord::Migration[5.2]
  def change
    create_table :answer2s do |t|
      t.string :uid
      t.integer :type
      t.string :ans1
      t.string :ans2

      t.timestamps
    end
  end
end
