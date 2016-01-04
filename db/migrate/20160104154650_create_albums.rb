class CreateAlbums < ActiveRecord::Migration
  def change
  	create_table :albums do |t|
  		t.text :title
  		t.text :musicians, array: true
  		t.text :image_path
  		t.integer :year

  		t.timestamps
  	end
  end
end
