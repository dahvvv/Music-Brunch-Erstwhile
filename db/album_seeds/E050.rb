require_relative '../seeds'

info = {
	title: 'between',
	catalog_num: 'E050',
	musicians: ['Keith Rowe', 'Toshimaru Nakamura'],
	image_path: '/images/album_covers/050_between.jpg',
	year: 2006,
	order: 16,
	songs: [
		{
			title: 'Vienna',
			time_in_seconds: 2141,
		},
		{
			title: 'July',
			time_in_seconds: 1475,
		},
		{
			title: '13630 kHz',
			time_in_seconds: 528,
		},
		{
			title: 'Lausanne',
			time_in_seconds: 2481,
		},
		{
			title: 'Amann',
			time_in_seconds: 1211,
		}
	]
}

@album_seeds << info