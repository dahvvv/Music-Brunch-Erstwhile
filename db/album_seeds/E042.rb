require_relative '../seeds'

info = {
	title: 'Good Morning Good Night',
	catalog_num: 'E042',
	musicians: ['Sachiko M', 'Toshimaru Nakamura', 'Otomo Yoshihide'],
	image_path: '/images/album_covers/042_good_morning_good_night.jpg',
	sample_paths: ['/audio/042_audio.wav','/audio/042_audio2a.wav','/audio/042_audio2b.wav'],
	year: 2004,
	order: 13,
	songs: [
		{
			title: 'Good Morning',
			time_in_seconds: 1812,
		},
		{
			title: 'Good Afternoon',
			time_in_seconds: 479,
		},
		{
			title: 'Good Evening',
			time_in_seconds: 1534,
		},
		{
			title: 'Good Night',
			time_in_seconds: 2240,
		}
	]
}

@album_seeds << info