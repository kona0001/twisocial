class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.string :name
      t.string :screenname
      t.string :icon_url
      t.string :text

      t.timestamps
    end
  end
end