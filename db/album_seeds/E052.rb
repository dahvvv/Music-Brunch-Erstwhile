require_relative '../seeds'

info = {
	title: 'The Breadwinner',
	catalog_num: 'E052',
	musicians: ['Graham Lambkin', 'Jason Lescalleet'],
	image_path: '/images/album_covers/052_the_breadwinner.jpg',
	year: 2008,
	order: 19,
	songs: [
		{
			title: 'Listen, the Snow is Falling',
			time_in_seconds: 480,
		},
		{
			title: 'There and Back',
			time_in_seconds: 240,
		},
		{
			title: 'E5150/Body Transport',
			time_in_seconds: 540,
		},
		{
			title: 'Soap Opera Suite',
			time_in_seconds: 366,
		},
		{
			title: 'Lucy Song',
			time_in_seconds: 360,
		},
		{
			title: 'Two States',
			time_in_seconds: 420,
		},
		{
			title: 'There And Back Again',
			time_in_seconds: 133,
		},
		{
			title: 'The Breadwinner',
			time_in_seconds: 420,
		}
	]
}

@album_seeds << info