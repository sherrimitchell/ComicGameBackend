class CreatePhotoAssets < ActiveRecord::Migration
  def change
    create_table :photo_assets do |t|
      t.string :photo_asset_url
      t.float :photo_asset_x_position
      t.float :photo_asset_y_position
      t.float :photo_asset_width
      t.float :photo_asset_height
      t.string :photo_asset_text

      t.timestamps null: false
    end
  end
end
