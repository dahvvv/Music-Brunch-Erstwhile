class Song < ActiveRecord::Base
	belongs_to(:album)

	def time
		sec = self.time_in_seconds % 60
		min = (self.time_in_seconds - sec) / 60
		"#{min.to_s}:#{'%02d' % sec}"
	end
end