require 'bundler'
Bundler.require
require_relative 'connection'
Dir[Dir.pwd + '/models/*.rb'].each{ |file| require file }

get '/' do
	'Hello world'
end
