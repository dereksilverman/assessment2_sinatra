require 'bundler'
require 'sinatra'
require 'active_record'
require 'yaml'
Bundler.require
#require './lib'


ActiveRecord::Base.establish_connection(
  :adapter  => 'sqlite3',
  :database => 'spacekittens.db'
)

set :database, "sql:///spacekittens.db"

module SinatraAssessment
  class Assessment < Sinatra::Application

  	get "/" do
  		erb	:index
	end

	get "/show" do

	end

	get "/show/:id" do
		erb :show

	end

	get "/new" do
		:create
	end



  	
  end
end