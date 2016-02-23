require_relative '../seeds'

info = {
	title: 'Duos For Doris',
	catalog_num: 'E030',
	musicians: ['Keith Rowe', 'John Tilbury'],
	image_path: '/images/album_covers/030_duos_for_doris.jpg',
	sample_paths: ['/audio/030_audio.wav','/audio/030_audio2.wav'],
	year: 2003,
	order: 11,
	songs: [
		{
			title: 'Cathnor',
			time_in_seconds: 4214,
		},
		{
			title: 'Olaf',
			time_in_seconds: 2732,
		},
		{
			title: 'Oxleay',
			time_in_seconds: 1049,
		}
	]
}

@album_seeds << info