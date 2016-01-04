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