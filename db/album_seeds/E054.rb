require_relative '../seeds'

info = {
	title: 'contact',
	catalog_num: 'E054',
	musicians: ['Sachiko M', 'Keith Rowe'],
	image_path: '/images/album_covers/054_contact.jpg',
	year: 2009,
	order: 21,
	songs: [
		{
			title: 'square',
			time_in_seconds: 2482,
		},
		{
			title: 'oval',
			time_in_seconds: 1684,
		},
		{
			title: 'rectangle',
			time_in_seconds: 1881,
		},
		{
			title: 'circle',
			time_in_seconds: 1200,
		}
	]
}

@album_seeds << info