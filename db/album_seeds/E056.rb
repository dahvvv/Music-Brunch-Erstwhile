require_relative '../seeds'

info = {
	title: 'Soba to Bara',
	catalog_num: 'E056',
	musicians: ['Ami Yoshida', 'Toshimaru Nakamura'],
	image_path: '/images/album_covers/056_soba_to_bara.jpg',
	year: 2009,
	order: 23,
	songs: [
		{
			title: 'Soba to Bara',
			time_in_seconds: 2879,
		}
	]
}

@album_seeds << info