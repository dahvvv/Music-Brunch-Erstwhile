require_relative '../seeds'

info = {
	title: 'Open',
	catalog_num: 'E032',
	musicians: ['Matt Davis', 'Phil Durrant', 'Mark Wastell'],
	image_path: '/images/album_covers/032_open.jpg',
	year: 2003,
	order: 12,
	songs: [
		{
			title: 'open',
			time_in_seconds: 1107,
		},
		{
			title: 'fist',
			time_in_seconds: 1410,
		}
	]
}

# @album_seeds << info