class AddPhotoIdToPhotoAsset < ActiveRecord::Migration
  def change
    add_column :photo_assets, :photo_id, :integer
  end
end
