require_relative '../seeds'

info = {
	title: 'ErstLive 005',
	catalog_num: 'EL005',
	musicians: ['Keith Rowe', 'Sachiko M', 'Toshimaru Nakamura', 'Otomo Yoshihide'],
	image_path: '/images/album_covers/EL005.jpg',
	year: 2004,
	order: 14,
	songs: [
		{
			title: 'Disc 1, Track 1',
			time_in_seconds: 1200,
		},
		{
			title: 'Disc 1, Track 2',
			time_in_seconds: 1200,
		},
		{
			title: 'Disc 1, Track 3',
			time_in_seconds: 1198,
		},
		{
			title: 'Disc 1, Track 4',
			time_in_seconds: 1180,
		},
		{
			title: 'Disc 2, Track 1',
			time_in_seconds: 1200,
		},
		{
			title: 'Disc 2, Track 2',
			time_in_seconds: 1200,
		},
		{
			title: 'Disc 2, Track 3',
			time_in_seconds: 1202,
		},
		{
			title: 'Disc 2, Track 4',
			time_in_seconds: 775,
		},
		{
			title: 'Disc 3, Track 1',
			time_in_seconds: 1200,
		},
		{
			title: 'Disc 3, Track 2',
			time_in_seconds: 1200,
		},
		{
			title: 'Disc 3, Track 3',
			time_in_seconds: 1200,
		},
		{
			title: 'Disc 3, Track 4',
			time_in_seconds: 1103,
		}
	]
}

@album_seeds << info