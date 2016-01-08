require_relative '../seeds'

info = {
	title: 'imaoto',
	catalog_num: 'E055',
	musicians: ['Radu Malfatti', 'Klaus Filip'],
	image_path: '/images/album_covers/055_imaoto.jpg',
	year: 2009,
	order: 22,
	songs: [
		{
			title: 'oto',
			time_in_seconds: 1855,
		},
		{
			title: 'ima',
			time_in_seconds: 1168,
		}
	]
}

@album_seeds << info