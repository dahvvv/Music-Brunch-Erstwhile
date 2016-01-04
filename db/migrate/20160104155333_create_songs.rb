class CreateSongs < ActiveRecord::Migration
  def change
  	create_table :songs do |t|
  		t.text :title
  		t.integer :album_id
  		t.integer :time_in_seconds
  		t.integer :track_num

  		t.timestamps
  	end
  end
end
