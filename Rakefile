require 'bundler'
Bundler.require

require 'sinatra/activerecord/rake'
require 'active_support/core_ext/string'
require_relative 'connection'

namespace :db do
	
	desc 'create music_brunch_erstwhile db'
	task :create_db do
		conn = PG::Connection.open()
		conn.exec('CREATE DATABASE music_brunch_erstwhile;')
		conn.close
	end

	desc 'drop music_brunch_erstwhile db'
	task :drop_db do
		conn = PG::Connection.open()
		conn.exec('DROP DATABASE music_brunch_erstwhile;')
		conn.close
	end

end