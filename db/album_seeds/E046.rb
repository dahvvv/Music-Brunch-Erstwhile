require_relative '../seeds'

info = {
	title: 'cloud',
	catalog_num: 'E046',
	musicians: ['Four Gentlemen of the Guitar'],
	image_path: '/images/album_covers/046_cloud.jpg',
	year: 2005,
	order: 15,
	songs: [
		{
			title: 'perfect grass',
			time_in_seconds: 1427,
		},
		{
			title: 'deformed veil',
			time_in_seconds: 2295,
		},
		{
			title: 'yellow cloud',
			time_in_seconds: 3745,
		}
	]
}

@album_seeds << info