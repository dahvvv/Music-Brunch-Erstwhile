require 'bundler'
Bundler.require
require_relative 'connection'
Dir[Dir.pwd + '/models/*.rb'].each{ |file| require file }

get '/' do
	redirect '/albums'
end

get '/albums' do
	erb :'/albums/index'
end
