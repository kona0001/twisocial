class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :uid
      t.integer :situation
      t.string :ans1
      t.string :ans2
      t.string :ans3

      t.timestamps
    end
  end
end
