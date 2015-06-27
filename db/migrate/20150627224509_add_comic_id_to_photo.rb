class AddComicIdToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :comic_id, :integer
  end
end
