require_relative '../seeds'

info = {
	title: 'One Day',
	catalog_num: 'E053',
	musicians: ['Toshimaru Nakamura', 'English'],
	image_path: '/images/album_covers/053_one_day.jpg',
	year: 2008,
	order: 20,
	songs: [
		{
			title: 'Ong Time',
			time_in_seconds: 1239,
		},
		{
			title: 'Plant Signs',
			time_in_seconds: 1201,
		},
		{
			title: 'The Color Of',
			time_in_seconds: 958,
		}
	]
}

@album_seeds << info