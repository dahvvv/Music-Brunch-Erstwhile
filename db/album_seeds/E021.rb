require_relative '../seeds'

info = {
	title: 'The Hands Of Caravaggio',
	catalog_num: 'E021',
	musicians: ['MIMEO', 'John Tilbury'],
	image_path: '/images/album_covers/021_the_hands_of_caravaggio.jpg',
	sample_paths: ['/audio/021_audio.wav', '/audio/021_audio2.wav'],
	year: 2002,
	order: 7,
	songs: [
		{
			title: 'The Hands Of Caravaggio I',
			time_in_seconds: 441,
		},
		{
			title: 'The Hands Of Caravaggio II',
			time_in_seconds: 842,
		},
		{
			title: 'The Hands Of Caravaggio III',
			time_in_seconds: 438,
		},
		{
			title: 'The Hands Of Caravaggio IV',
			time_in_seconds: 541,
		},
		{
			title: 'The Hands Of Caravaggio V',
			time_in_seconds: 700,
		}
	]
}

@album_seeds << info