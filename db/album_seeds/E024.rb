require_relative '../seeds'

info = {
	title: 'Tears',
	catalog_num: 'E024',
	musicians: ['Cosmos'],
	image_path: '/images/album_covers/024_tears.jpg',
	sample_paths: ['/audio/024_audio.wav', '/audio/024_audio2.wav'],
	year: 2002,
	order: 8,
	songs: [
		{
			title: '|',
			time_in_seconds: 1469,
		},
		{
			title: '||',
			time_in_seconds: 1089,
		},
		{
			title: '|||',
			time_in_seconds: 729,
		}
	]
}

@album_seeds << info