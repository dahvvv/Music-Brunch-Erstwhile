require_relative '../seeds'

info = {
	title: 'Dach',
	catalog_num: 'E014',
	musicians: ['Phil Durrant', 'Thomas Lehn', 'Radu Malfatti'],
	image_path: '/images/album_covers/014_dach.jpg',
	sample_paths: ['/audio/014_audio3.wav'],
	year: 2000,
	order: 4,
	songs: [
		{
			title: 'Dach 1',
			time_in_seconds: 795,
		},
		{
			title: 'Dach 2',
			time_in_seconds: 839,
		},
		{
			title: 'Dach 3',
			time_in_seconds: 931,
		},
		{
			title: 'Dach 4',
			time_in_seconds: 850,
		}
	]
}

@album_seeds << info