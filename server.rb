require 'bundler'
Bundler.require
require_relative 'connection'
Dir[Dir.pwd + '/models/*.rb'].each{ |file| require file }

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
	erb :'/albums/show'
end
