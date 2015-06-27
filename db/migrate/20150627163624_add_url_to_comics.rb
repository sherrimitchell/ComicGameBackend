class AddUrlToComics < ActiveRecord::Migration
  def change
    add_column :comics, :comic_url, :string
  end
end
