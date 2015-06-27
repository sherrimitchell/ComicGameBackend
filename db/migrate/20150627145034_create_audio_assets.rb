class CreateAudioAssets < ActiveRecord::Migration
  def change
    create_table :audio_assets do |t|
      t.string :audio_asset_url

      t.timestamps null: false
    end
  end
end
