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
	year: 1999,
	order: 1
})

particles_and_smears = Album.create!({
	title: 'Particles and Smears',
	catalog_num: 'E006',
	musicians: ['Kevin Drumm', 'Martin Tètrault'],
	image_path: '/images/album_covers/006_particles_and_smears.jpg',
	year: 1999,
	order: 2
})

do_album = Album.create!({
	title: 'Do',
	catalog_num: 'E013',
	musicians: ['Sachiko M', 'Toshimaru Nakamura'],
	image_path: '/images/album_covers/013_do.jpg',
	year: 2000,
	order: 3
})

dach = Album.create!({
	title: 'Dach',
	catalog_num: 'E014',
	musicians: ['Phil Durrant', 'Thomas Lehn', 'Radu Malfatti'],
	image_path: '/images/album_covers/014_dach.jpg',
	year: 2000,
	order: 4
})

axel_dörner_and_kevin_drumm = Album.create!({
	title: 'Axel Dörner and Kevin Drumm',
	catalog_num: 'E005',
	musicians: ['Axel Dörner', 'Kevin Drumm'],
	image_path: '/images/album_covers/015_axel_dörner_and_kevin_drumm.jpg',
	year: 2001,
	order: 5
})

forlorn_green = Album.create!({
	title: 'Forlorn Green',
	catalog_num: 'E019',
	musicians: ['Greg Kelley', 'Jason Lescalleet'],
	image_path: '/images/album_covers/019_forlorn_green.jpg',
	year: 2001,
	order: 6
})

the_hands_of_caravaggio = Album.create!({
	title: 'The Hands of Caravaggio',
	catalog_num: 'E021',
	musicians: ['MIMEO', 'John Tilbury'],
	image_path: '/images/album_covers/021_the_hands_of_caravaggio.jpg',
	year: 2002,
	order: 7
})

tears = Album.create!({
	title: 'Tears',
	catalog_num: 'E024',
	musicians: ['Cosmos'],
	image_path: '/images/album_covers/024_tears.jpg',
	year: 2002,
	order: 8
})

eh = Album.create!({
	title: 'Eh',
	catalog_num: 'E025',
	musicians: ['Burkhard Stangl', 'Dieb13'],
	image_path: '/images/album_covers/025_eh.jpg',
	year: 2002,
	order: 9
})

lidingö = Album.create!({
	title: 'Lidingö',
	catalog_num: 'E026',
	musicians: ['Andrea Neumann', 'Burkhard Beins'],
	image_path: '/images/album_covers/026_lidingö.jpg',
	year: 2002,
	order: 10
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