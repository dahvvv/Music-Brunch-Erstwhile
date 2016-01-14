class AddSamplePathsToAlbums < ActiveRecord::Migration
  def change
  	add_column :albums, :sample_paths, :text, array: true
  end
end
