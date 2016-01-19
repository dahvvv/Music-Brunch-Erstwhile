require_relative '../seeds'

info = {
	title: 'Axel Dörner and Kevin Drumm',
	catalog_num: 'E015',
	musicians: ['Axel Dörner', 'Kevin Drumm'],
	image_path: '/images/album_covers/015_axel_dörner_and_kevin_drumm.jpg',
	sample_paths: ['/audio/015_audio.wav'],
	year: 2001,
	order: 5,
	songs: [
		{
			title: '',
			time_in_seconds: 1499,
		},
		{
			title: '',
			time_in_seconds: 1081,
		},
		{
			title: '',
			time_in_seconds: 206,
		},
		{
			title: '',
			time_in_seconds: 203,
		},
		{
			title: '',
			time_in_seconds: 95,
		}
	]
}

@album_seeds << info