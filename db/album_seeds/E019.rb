require_relative '../seeds'

info = {
	title: 'Forlorn Green',
	catalog_num: 'E019',
	musicians: ['Greg Kelley', 'Jason Lescalleet'],
	image_path: '/images/album_covers/019_forlorn_green.jpg',
	sample_paths: ['/audio/019_audio.wav'],
	year: 2001,
	order: 6,
	songs: [
		{
			title: 'Man On The Outside',
			time_in_seconds: 540,
		},
		{
			title: 'Conquest Of The Earth',
			time_in_seconds: 1620,
		},
		{
			title: 'Tight Spot',
			time_in_seconds: 480,
		},
		{
			title: 'Autumn Leaves',
			time_in_seconds: 600,
		}
	]
}

@album_seeds << info