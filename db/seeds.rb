require 'bundler'
Bundler.require

require_relative '../connection'
Dir[Dir.pwd + '/models/*.rb'].each{ |file| require file }

Album.destroy_all()

the_world_turned_upside_down = Album.create!({
	title: 'The World Turned Upside Down',
	catalog_num: 'E005',
	musicians: ['Keith Rowe', 'Günter Müller', 'Taku Sugimoto'],
	image_path: '/images/album_covers/005_the_world_turned_upside_down.jpg',
	year: 1999
})

Song.destroy_all()

phase_two = Song.create!({
	title: 'phase two',
	album_id: the_world_turned_upside_down.id,
	time_in_seconds: 2084,
	track_num: 1
})

phase_one = Song.create!({
	title: 'phase one',
	album_id: the_world_turned_upside_down.id,
	time_in_seconds: 1331,
	track_num: 2
})