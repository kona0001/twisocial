class CreateSpamusers < ActiveRecord::Migration[5.2]
  def change
    create_table :spamusers do |t|
      t.integer :num
      t.string :name
      t.string :screenname
      t.string :icon_url
      t.integer :follow
      t.integer :follower
      t.string :description

      t.timestamps
    end
  end
end
