require_relative '../seeds'

info = {
	title: 'Axel Dörner and Kevin Drumm',
	catalog_num: 'E015',
	musicians: ['Axel Dörner', 'Kevin Drumm'],
	image_path: '/images/album_covers/015_axel_dörner_and_kevin_drumm.jpg',
	year: 2001,
	order: 5,
	songs: [
		{
			title: '1',
			time_in_seconds: 1499,
		},
		{
			title: '2',
			time_in_seconds: 1081,
		},
		{
			title: '3',
			time_in_seconds: 206,
		},
		{
			title: '4',
			time_in_seconds: 203,
		},
		{
			title: '5',
			time_in_seconds: 95,
		}
	]
}

@album_seeds << info