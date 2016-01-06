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
	redirect '/albums'
end

get '/albums' do
	@albums = Album.order(:order)
	erb :'/albums/index'
end

get '/albums/:id' do
	@albums = Album.order(:order)
	@album = Album.find(params[:id])
	@songs = @album.songs
	erb :'/albums/show'
end

get '/console' do
	binding.pry
end
