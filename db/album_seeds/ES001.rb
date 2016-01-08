require_relative '../seeds'

info = {
	title: 'The Room',
	catalog_num: 'ES001',
	musicians: ['Keith Rowe'],
	image_path: '/images/album_covers/ES001.jpg',
	year: 2007,
	order: 18,
	songs: [
		{
			title: 'The Room',
			time_in_seconds: 2337,
		}
	]
}

@album_seeds << info