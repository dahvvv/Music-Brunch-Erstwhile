class AddCatalogNumToAlbums < ActiveRecord::Migration
  def change
  	add_column :albums, :catalog_num, :text
  end
end
