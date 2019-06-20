class AddImageUrlToSituations < ActiveRecord::Migration[5.2]
  def change
    add_column :situations, :image_url, :string
  end
end
