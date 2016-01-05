require 'bundler'
Bundler.require

@album_seeds = []

require_relative '../connection'
Dir[Dir.pwd + '/models/*.rb'].each{ |file| require file }
Dir[Dir.pwd + '/db/album_seeds/*.rb'].each{ |file| require file }

Album.destroy_all()
Song.destroy_all()

@album_seeds.each do |album_info|
	album = Album.create!({
		title: album_info[:title],
		catalog_num: album_info[:catalog_num],
		musicians: album_info[:musicians],
		image_path: album_info[:image_path],
		year: album_info[:year],
		order: album_info[:order]
		})

	album_info[:songs].each_with_index do |song_info, i|
		Song.create!({
			title: song_info[:title],
			album_id: album[:id],
			time_in_seconds: song_info[:time_in_seconds],
			track_num: i + 1
			})
	end
end
