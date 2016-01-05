require_relative '../seeds'

info = {
	title: 'Do',
	catalog_num: 'E013',
	musicians: ['Sachiko M', 'Toshimaru Nakamura'],
	image_path: '/images/album_covers/013_do.jpg',
	year: 2000,
	order: 3,
	songs: [
		{
			title: 'do #1',
			time_in_seconds: 2205,
		},
		{
			title: 'do #2',
			time_in_seconds: 161,
		},
		{
			title: 'do #3',
			time_in_seconds: 639,
		}
	]
}

@album_seeds << info