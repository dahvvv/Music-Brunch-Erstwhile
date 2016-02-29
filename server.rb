require 'bundler'
Bundler.require
require_relative 'connection'
Dir[Dir.pwd + '/models/*.rb'].each{ |file| require file }

get '/*/styles.css' do
	redirect 'stylesheets/styles.css'
end

get '/*/main.js' do
	redirect 'js/main.js'
end

get '/' do
	redirect '/erstwhile/albums'
end

get '/erstwhile/albums' do
	@albums = Album.order(:order)
	erb :'/erstwhile/albums/index'
end

get '/erstwhile/albums/:id' do
	@albums = Album.order(:order)
	@album = Album.find(params[:id])
	@songs = @album.songs
	erb_string = erb :'/erstwhile/albums/show'
	{
		src: @album.sample_paths[params[:sampleIdx].to_i],
		show: erb_string
	}.to_json
	# redirect '/albums'
end

get '/console' do
	binding.pry
end
