require 'rubygems'
require 'bundler'
Bundler.require
# If you're using bundler, you will need to add this
require 'bundler/setup'

set :root, File.dirname(__FILE__)

require 'sinatra'

class MarketingApp < Sinatra::Base
	get '/' do
	  "Hello world, it's #{Time.now} at the server!"
	end

	get '/:tactic' do
    "Hello, #{params[:tactic]}!"
  end
end