require_relative '../seeds'

info = {
	title: 'Lidingö',
	catalog_num: 'E026',
	musicians: ['Andrea Neumann', 'Burkhard Beins'],
	image_path: '/images/album_covers/026_lidingö.jpg',
	year: 2002,
	order: 10,
	songs: [
		{
			title: 'Approaching Lidingö',
			time_in_seconds: 662,
		},
		{
			title: 'Lidingö',
			time_in_seconds: 1446,
		},
		{
			title: 'Bron',
			time_in_seconds: 249,
		},
		{
			title: 'Loffe',
			time_in_seconds: 460,
		},
		{
			title: 'Remembering Lidingö',
			time_in_seconds: 351,
		}
	]
}

# @album_seeds << info