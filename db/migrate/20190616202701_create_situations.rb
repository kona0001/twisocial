class CreateSituations < ActiveRecord::Migration[5.2]
  def change
    create_table :situations do |t|
      t.integer :num
      t.string :text
      t.integer :like
      t.integer :fav
      t.integer :mode

      t.timestamps
    end
  end
end
