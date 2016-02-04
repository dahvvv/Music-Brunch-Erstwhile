require_relative '../seeds'

info = {
	title: 'Eh',
	catalog_num: 'E025',
	musicians: ['Burkhard Stangl', 'Dieb13'],
	image_path: '/images/album_covers/025_eh.jpg',
	sample_paths: ['/audio/025_audio.wav'],
	year: 2002,
	order: 9,
	songs: [
		{
			title: 'eeeh',
			time_in_seconds: 437,
		},
		{
			title: 'eehe',
			time_in_seconds: 551,
		},
		{
			title: 'eehh',
			time_in_seconds: 195,
		},
		{
			title: 'ehee',
			time_in_seconds: 419,
		},
		{
			title: 'eheh',
			time_in_seconds: 277,
		},
		{
			title: 'ehhe',
			time_in_seconds: 255,
		},
		{
			title: 'ehhh',
			time_in_seconds: 514,
		},
		{
			title: 'heee',
			time_in_seconds: 130,
		},
		{
			title: 'heeh',
			time_in_seconds: 207,
		},
		{
			title: 'hehe',
			time_in_seconds: 956,
		}
	]
}

@album_seeds << info