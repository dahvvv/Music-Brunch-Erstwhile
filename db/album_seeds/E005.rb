require_relative '../seeds'

info = {
	title: 'The World Turned Upside Down',
	catalog_num: 'E005',
	musicians: ['Keith Rowe', 'Günter Müller', 'Taku Sugimoto'],
	image_path: '/images/album_covers/005_the_world_turned_upside_down.jpg',
	year: 1999,
	order: 1,
	songs: [
		{
			title: 'phase two',
			time_in_seconds: 2084,
		},
		{
			title: 'phase one',
			time_in_seconds: 1331,
		}
	]
}

@album_seeds << info