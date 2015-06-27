class AddPhotoIdToAudioAsset < ActiveRecord::Migration
  def change
    add_column :audio_assets, :photo_id, :integer
  end
end
